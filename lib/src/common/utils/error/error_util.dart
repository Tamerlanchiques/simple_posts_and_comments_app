import 'dart:async';

import 'package:simple_posts_and_comments_app/src/common/utils/platform/error_util_vm.dart';
// if (dart.library.html) 'package:simple_posts_and_comments_app/common/utils/platform/error_util_js.dart';

//import 'package:l/l.dart';

/// Error util.
abstract final class ErrorUtil {
  /// Log the error to the console and to Crashlytics.
  static Future<void> logError(
    Object exception,
    StackTrace stackTrace, {
    String? hint,
    bool fatal = false,
  }) async {
    try {
      if (exception is String) {
        return await logMessage(
          exception,
          stackTrace: stackTrace,
          hint: hint,
          warning: true,
        );
      }
      $captureException(exception, stackTrace, hint, fatal).ignore();
      // l.e(exception, stackTrace);
    } on Object catch (error, _) {
/*       l.e(
        'Error while logging error "$error" inside ErrorUtil.logError',
        stackTrace,
      ); */
    }
  }

  /// Logs a message to the console and to Crashlytics.
  static Future<void> logMessage(
    String message, {
    StackTrace? stackTrace,
    String? hint,
    bool warning = false,
  }) async {
    try {
      // l.e(message, stackTrace ?? StackTrace.current);
      $captureMessage(message, stackTrace, hint, warning).ignore();
    } on Object catch (error, _) {
/*       l.e(
        'Error while logging error "$error" inside ErrorUtil.logMessage',
        stackTrace,
      ); */
    }
  }

  /// Rethrows the error with the stack trace.
  static Never throwWithStackTrace(Object error, StackTrace stackTrace) =>
      Error.throwWithStackTrace(error, stackTrace);
}