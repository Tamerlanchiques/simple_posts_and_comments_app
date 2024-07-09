import 'package:dio/dio.dart';
import '../../domain/models/comment/comment.dart';

abstract class ICommentsApi {
  Future<List<Comment>> getCommentsByPostId(int postId);
}

class CommentsApi implements ICommentsApi {
  final Dio _dio;

  const CommentsApi(this._dio);

  @override
  Future<List<Comment>> getCommentsByPostId(int postId) async {
    final response = await _dio.get('/posts/$postId/comments');
    final List<dynamic> data = response.data;
    return data.map((json) => Comment.fromJson(json)).toList();
  }
}
