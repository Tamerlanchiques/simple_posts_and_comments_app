import 'package:flutter/material.dart';
import 'package:simple_posts_and_comments_app/src/common/model/dependencies.dart';
import 'package:simple_posts_and_comments_app/src/features/post/domain/models/post/post.dart';
import 'package:simple_posts_and_comments_app/src/features/post/pages/post_list_page/post_list_page.dart';
import 'package:simple_posts_and_comments_app/src/features/post/pages/post_page/post_page.dart';

/// The route path for the posts list page.
const String postsRoute = '/';

/// The route path for the individual post page.
const String postRoute = '/post';

/// A class that handles generating routes for the application.
class RouteHandler {
  /// Generates a route based on the provided [settings].
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case (postsRoute):
        return MaterialPageRoute(
            settings: const RouteSettings(name: postsRoute),
            builder: (context) => PostListPage(
                  postCubit: Dependencies.read(context).blocs.postBloc,
                ));
      case (postRoute):
        final post = settings.arguments as Post;
        return MaterialPageRoute(
            settings: const RouteSettings(name: postsRoute),
            builder: (context) => PostPage(
                  initialData: post,
                  postBloc: Dependencies.read(context).blocs.postBloc,
                ));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
