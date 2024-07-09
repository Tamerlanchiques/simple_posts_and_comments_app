import 'package:flutter/material.dart';
import 'package:simple_posts_and_comments_app/src/common/model/dependencies.dart';

/// {@template inherited_dependencies}
/// InheritedDependencies widget.
/// {@endtemplate}
class InheritedDependencies extends InheritedWidget {
  /// {@macro inherited_dependencies}
  const InheritedDependencies({
    required this.dependencies,
    required super.child,
    super.key,
  });

  final Dependencies dependencies;

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  /// e.g. `InheritedDependencies.maybeOf(context)`.
  static Dependencies? maybeOf(BuildContext context, {bool listen = true}) {
    if (listen) {
      // This will cause the calling widget to rebuild when the InheritedWidget updates
      return context
          .dependOnInheritedWidgetOfExactType<InheritedDependencies>()
          ?.dependencies;
    } else {
      // This will not cause the calling widget to rebuild when the InheritedWidget updates
      final widget = context
          .getElementForInheritedWidgetOfExactType<InheritedDependencies>()
          ?.widget as InheritedDependencies?;
      return widget?.dependencies;
    }
  }

  static Never _notFoundInheritedWidgetOfExactType() => throw ArgumentError(
        'Out of scope, not found inherited widget '
            'a InheritedDependencies of the exact type',
        'out_of_scope',
      );

  /// The state from the closest instance of this class
  /// that encloses the given context.
  /// e.g. `InheritedDependencies.of(context)`
  static Dependencies of(BuildContext context, {bool listen = true}) =>
      maybeOf(context, listen: listen) ?? _notFoundInheritedWidgetOfExactType();

  /// Returns the dependencies from the [BuildContext] without listening for changes.
  static Dependencies read(BuildContext context) => of(context, listen: false);

  /// Returns the dependencies from the [BuildContext] and listens for changes.
  static Dependencies watch(BuildContext context) => of(context);

  @override
  bool updateShouldNotify(InheritedDependencies oldWidget) => false;
}
