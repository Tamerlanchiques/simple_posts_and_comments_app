import 'package:dio/dio.dart';
import '../../domain/models/post/post.dart';

abstract class IPostsApi {
  Future<List<Post>> getAllPosts();
  Future<Post> getPostById(int id);
  Future<Post> createPost(Post post);
  Future<Post> updatePost(int id, Post post);
  Future<void> deletePost(int id);
}

class PostsApi implements IPostsApi {
  final Dio _dio;

  const PostsApi(this._dio);

  @override
  Future<List<Post>> getAllPosts() async {
    final response = await _dio.get('/posts');
    final List<dynamic> data = response.data;
    return data.map((json) => Post.fromJson(json)).toList();
  }

  @override
  Future<Post> getPostById(int id) async {
    final response = await _dio.get('/posts/$id');
    return Post.fromJson(response.data);
  }

  @override
  Future<Post> createPost(Post post) async {
    final response = await _dio.post('/posts', data: post.toJson());
    return Post.fromJson(response.data);
  }

  @override
  Future<Post> updatePost(int id, Post post) async {
    final response = await _dio.put('/posts/$id', data: post.toJson());
    return Post.fromJson(response.data);
  }

  @override
  Future<void> deletePost(int id) async {
    await _dio.delete('/posts/$id');
  }
}
