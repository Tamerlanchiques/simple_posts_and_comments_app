import 'package:simple_posts_and_comments_app/src/features/post/data/repositories/comments_repository.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/repositories/photos_repository.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/repositories/posts_repository.dart';

/// A class that represents the repositories used in the application.
class AppRepositories {
  final IPostsRepository postsRepository;
  final ICommentsRepository commentsRepository;
  final IPhotosRepository photosRepository;

  /// Constructs an instance of [AppRepositories] with the given repositories.
  const AppRepositories({
    required this.postsRepository,
    required this.commentsRepository,
    required this.photosRepository,
  });
}
