import 'package:simple_posts_and_comments_app/src/features/post/domain/models/comment/comment.dart';

import '../api/comments_api.dart';

abstract class ICommentsRepository {
  Future<List<Comment>> getCommentsByPostId(int postId, {bool forceRemote});
}

class CommentsRepositoryImpl implements ICommentsRepository {
  final ICommentsApi _commentsApi;
  final Map<int, List<Comment>> _commentsCache = {};

  CommentsRepositoryImpl(this._commentsApi);

  @override
  Future<List<Comment>> getCommentsByPostId(int postId,
      {bool forceRemote = false}) async {
    if (_commentsCache.containsKey(postId) && !forceRemote) {
      return _commentsCache[postId]!;
    }

    try {
      final comments = await _commentsApi.getCommentsByPostId(postId);
      _commentsCache[postId] = comments;
      return comments;
    } catch (e) {
      throw Exception('Failed to load comments: $e');
    }
  }
}
