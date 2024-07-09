import 'dart:async';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:platform_info/platform_info.dart';
import 'package:simple_posts_and_comments_app/src/common/constant/config.dart';
import 'package:simple_posts_and_comments_app/src/common/model/app_api_clients.dart';
import 'package:simple_posts_and_comments_app/src/common/model/app_blocs.dart';
import 'package:simple_posts_and_comments_app/src/common/model/app_metadata.dart';
import 'package:simple_posts_and_comments_app/src/common/model/app_repositories.dart';
import 'package:simple_posts_and_comments_app/src/common/model/dependencies.dart';
import 'package:simple_posts_and_comments_app/src/common/utils/screen_util.dart';
import 'package:simple_posts_and_comments_app/src/constants/pubspec.yaml.g.dart';
import 'package:simple_posts_and_comments_app/src/features/post/cubit/post_bloc.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/api/comments_api.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/api/photos_api.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/api/posts_api.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/repositories/comments_repository.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/repositories/photos_repository.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/repositories/posts_repository.dart';

import 'platform/platform_initialization.dart';

/// Initializes the app and returns a [Dependencies] object
Future<Dependencies> $initializeDependencies({
  void Function(int progress, String message)? onProgress,
}) async {
  final dependencies = Dependencies();
  final totalSteps = _initializationSteps.length;
  var currentStep = 0;
  for (final step in _initializationSteps.entries) {
    try {
      currentStep++;
      final percent = (currentStep * 100 ~/ totalSteps).clamp(0, 100);
      onProgress?.call(percent, step.key);

      await step.value(dependencies);
    } on Object catch (error, stackTrace) {
      Error.throwWithStackTrace(
          'Initialization failed at step "${step.key}": $error', stackTrace);
    }
  }
  return dependencies;
}

typedef _InitializationStep = FutureOr<void> Function(
    Dependencies dependencies);
final Map<String, _InitializationStep> _initializationSteps =
    <String, _InitializationStep>{
  'Platform pre-initialization': (_) => $platformInitialization(),
  'Creating app metadata': (dependencies) =>
      dependencies.metadata = AppMetadata(
        isWeb: platform.isWeb,
        isRelease: platform.buildMode.isRelease,
        appName: Pubspec.name,
        appVersion: Pubspec.version.representation,
        appVersionMajor: Pubspec.version.major,
        appVersionMinor: Pubspec.version.minor,
        appVersionPatch: Pubspec.version.patch,
        appBuildTimestamp: Pubspec.version.build.isNotEmpty
            ? (int.tryParse(Pubspec.version.build.firstOrNull ?? '-1') ?? -1)
            : -1,
        operatingSystem: platform.operatingSystem.name,
        processorsCount: platform.numberOfProcessors,
        appLaunchedTimestamp: DateTime.now(),
        locale: platform.locale,
        deviceVersion: platform.version,
        deviceScreenSize: ScreenUtil.screenSize().representation,
      ),
  'API Client': (dependencies) => dependencies.dio = Dio(
        BaseOptions(
          baseUrl: Config.apiBaseUrl,
          connectTimeout: Config.apiConnectTimeout,
          receiveTimeout: Config.apiReceiveTimeout,
          headers: <String, String>{
            /* 'Connection': 'Close', */
            Headers.acceptHeader: Headers.jsonContentType,
          },
          receiveDataWhenStatusError: false, // Don't convert 4XX & 5XX to JSON
        ),
      ),
  'Add API interceptors': (dependencies) {
    dependencies.dio.interceptors.addAll(<Interceptor>[
      // TODO: add sentry interceptor
      /* AuthenticationInterceptor(
        token: () => authenticator.user.sessionId ?? (throw StateError('User is not logged in')),
        logout: () => Future<void>.sync(authenticator.logOut),
        refresh: () => Future<void>.sync(authenticator.refresh),
        retry: (options) => apiClient.fetch(options),
      ), */
      RetryInterceptor(
        dio: dependencies.dio,
        // logPrint: (message) => l.w('RetryInterceptor | API | $message'),
        retries: 3, // retry count (optional)
        retryDelays: const <Duration>[
          Duration(seconds: 1), // wait 1 sec before first retry
          Duration(seconds: 2), // wait 2 sec before second retry
          Duration(seconds: 10), // wait 3 sec before third retry
        ],
      ),
    ]);
  },
  'Init api clients': (dependencies) => dependencies.apiClients = AppApiClients(
      postsApi: PostsApi(dependencies.dio),
      photosApi: PhotosApi(dependencies.dio),
      commentsApi: CommentsApi(dependencies.dio)),
  'Init repositories': (dependencies) => dependencies.repositories =
      AppRepositories(
          postsRepository:
              PostsRepositoryImpl(dependencies.apiClients.postsApi),
          commentsRepository:
              CommentsRepositoryImpl(dependencies.apiClients.commentsApi),
          photosRepository:
              PhotosRepositoryImpl(dependencies.apiClients.photosApi)),
  'Init Blocs': (dependencies) => dependencies.blocs = AppBlocs(
          postBloc: PostBloc(
        postsRepository: dependencies.repositories.postsRepository,
        commentsRepository: dependencies.repositories.commentsRepository,
        photosRepository: dependencies.repositories.photosRepository,
      ))
};
