import 'package:rxdart/rxdart.dart';
import '../../domain/models/post/post.dart';
import '../api/posts_api.dart';

abstract class IPostsRepository {
  Future<void> getAllPosts();
  Future<Post> getPostById(int id);
  Future<Post> createPost(Post post);
  Future<Post> updatePost(int id, Post post);
  Future<void> deletePost(int id);
  Stream<List<Post>> get postsStream;
}

class PostsRepositoryImpl implements IPostsRepository {
  final IPostsApi _postsApi;
  final _allPostsStreamController = BehaviorSubject<List<Post>>();

  PostsRepositoryImpl(this._postsApi) {
    _postsApi
        .getAllPosts()
        .then((posts) => _allPostsStreamController.add(posts));
  }

  @override
  Stream<List<Post>> get postsStream => _allPostsStreamController.stream;

  @override
  Future<void> getAllPosts() async {
    try {
      final posts = await _postsApi.getAllPosts();
      _allPostsStreamController.add(posts);
    } catch (e) {
      _allPostsStreamController.addError('Failed to load posts: $e');
      throw Exception('Failed to load posts: $e');
    }
  }

  @override
  Future<Post> getPostById(int id) async {
    try {
      return await _postsApi.getPostById(id);
    } catch (e) {
      throw Exception('Failed to load post: $e');
    }
  }

  @override
  Future<Post> createPost(Post post) async {
    try {
      final newPost = await _postsApi.createPost(post);
      final currentPosts = _allPostsStreamController.value ?? [];
      _allPostsStreamController.add([...currentPosts, newPost]);
      return newPost;
    } catch (e) {
      throw Exception('Failed to create post: $e');
    }
  }

  @override
  Future<Post> updatePost(int id, Post post) async {
    try {
      final updatedPost = await _postsApi.updatePost(id, post);
      final currentPosts = _allPostsStreamController.value ?? [];
      final updatedPosts =
          currentPosts.map((p) => p.id == id ? updatedPost : p).toList();
      _allPostsStreamController.add(updatedPosts);
      return updatedPost;
    } catch (e) {
      throw Exception('Failed to update post: $e');
    }
  }

  @override
  Future<void> deletePost(int id) async {
    try {
      await _postsApi.deletePost(id);
      final currentPosts = _allPostsStreamController.value ?? [];
      final updatedPosts = currentPosts.where((p) => p.id != id).toList();
      _allPostsStreamController.add(updatedPosts);
    } catch (e) {
      throw Exception('Failed to delete post: $e');
    }
  }
}
