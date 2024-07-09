import 'package:simple_posts_and_comments_app/src/features/post/data/api/comments_api.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/api/photos_api.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/api/posts_api.dart';

final class AppApiClients {
  final IPostsApi postsApi;
  final IPhotosApi photosApi;
  final ICommentsApi commentsApi;

  AppApiClients(
      {required this.postsApi,
      required this.photosApi,
      required this.commentsApi});
}
