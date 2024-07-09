import 'package:flutter/material.dart';
import 'package:simple_posts_and_comments_app/src/common/router/route_handler.dart';

/// {@template app}
/// App widget.
/// {@endtemplate}
class App extends StatefulWidget {
  /// {@macro app}
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.dark(),
        onGenerateRoute: RouteHandler.generateRoute,
        initialRoute: postsRoute,
      );
}
