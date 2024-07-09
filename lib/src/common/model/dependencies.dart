import 'package:dio/dio.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/widgets.dart' show BuildContext;

import 'package:simple_posts_and_comments_app/src/features/initialization/widget/inherited_dependencies.dart';

import 'app_api_clients.dart';
import 'app_blocs.dart';
import 'app_metadata.dart';
import 'app_repositories.dart';

/// Dependencies
class Dependencies {
  Dependencies();

  /// App metadata
  late final AppMetadata metadata;

  /// Shared preferences
  // late final SharedPreferences sharedPreferences;

  /// Main API Client
  late final Dio dio;

  /// API Clients used across app
  late final AppApiClients apiClients;

  /// Repositories used across app
  late final AppRepositories repositories;

  /// Blocs used across app
  late final AppBlocs blocs;

  /// Authentication controller
  // late final AuthenticationController authenticationController;

  /// The state from the closest instance of this class.
  factory Dependencies.of(BuildContext context) =>
      InheritedDependencies.of(context);

  static maybeOf(BuildContext context, {bool listen = true}) =>
      InheritedDependencies.maybeOf(context, listen: listen);

  factory Dependencies.read(BuildContext context) =>
      InheritedDependencies.of(context, listen: false);

  factory Dependencies.watch(BuildContext context) =>
      InheritedDependencies.of(context);
}
