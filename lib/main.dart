import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:simple_posts_and_comments_app/src/common/widget/app.dart';
import 'package:simple_posts_and_comments_app/src/common/widget/app_error.dart';
import 'package:simple_posts_and_comments_app/src/features/initialization/data/initialization.dart';
import 'package:simple_posts_and_comments_app/src/features/initialization/widget/inherited_dependencies.dart';
import 'package:simple_posts_and_comments_app/src/features/initialization/widget/initialization_splash_screen.dart';

void main() {
  // Splash screen
  final initializationProgress =
      ValueNotifier<({int progress, String message})>(
          (progress: 0, message: ''));
  runApp(InitializationSplashScreen(progress: initializationProgress));
  $initializeApp(
    onProgress: (progress, message) =>
        initializationProgress.value = (progress: progress, message: message),
    onSuccess: (dependencies) => runApp(
      InheritedDependencies(
        dependencies: dependencies,
        child: const App(),
      ),
    ),
    onError: (error, stackTrace) {
      runApp(AppError(error: error));
      // ErrorUtil.logError(error, stackTrace).ignore();
    },
    serverConfigurationAssetPath: '',
  ).ignore();
}
