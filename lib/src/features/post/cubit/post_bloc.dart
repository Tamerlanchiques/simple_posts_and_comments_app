import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/repositories/comments_repository.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/repositories/photos_repository.dart';
import 'package:simple_posts_and_comments_app/src/features/post/data/repositories/posts_repository.dart';
import '../domain/models/post/post.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final IPostsRepository _postsRepository;
  final ICommentsRepository _commentsRepository;
  final IPhotosRepository _photosRepository;

  PostBloc({
    required IPostsRepository postsRepository,
    required ICommentsRepository commentsRepository,
    required IPhotosRepository photosRepository,
  })  : _postsRepository = postsRepository,
        _commentsRepository = commentsRepository,
        _photosRepository = photosRepository,
        super(const PostState.loading()) {
    on<Init>(_init);
    on<LoadPosts>(_onLoadPosts);
    on<LoadCommentsForPost>(_onLoadCommentsForPost);
    add(const Init());
  }

  Future<void> _init(
    Init event,
    Emitter<PostState> emit,
  ) async {
    emit.forEach<List<Post>>(
      _postsRepository.postsStream,
      onData: (posts) {
        _assignPhotosToPosts(posts)
            .then((updatedPosts) => emit(PostState.success(updatedPosts)));
        // load links of photos and then show posts
        return state;
      },
      onError: (_, __) => const PostState.error('Failed to load posts'),
    );
  }

  void _onLoadPosts(
    LoadPosts event,
    Emitter<PostState> emit,
  ) async {
    try {
      await _postsRepository.getAllPosts();
      event.completer?.complete();
    } catch (e) {
      event.completer?.completeError(e);
    }
  }

  Future<List<Post>> _assignPhotosToPosts(List<Post> posts) async {
    final updatedPosts = await Future.wait(posts.map((post) async {
      final photo = await _photosRepository.getPhotoByPostId(post.id);
      return post.copyWith(photo: photo);
    }).toList());
    return updatedPosts;
  }

  Future<void> _onLoadCommentsForPost(
    LoadCommentsForPost event,
    Emitter<PostState> emit,
  ) async {
    try {
      final comments = await _commentsRepository.getCommentsByPostId(
        event.post.id,
        forceRemote: event.forceRemote,
      );
      final updatedPost = event.post.copyWith(comments: comments);
      _updatePostWithComments(updatedPost, emit);
      event.completer?.complete();
    } catch (e) {
      event.completer?.completeError(e);
      emit(PostState.error(e.toString()));
    }
  }

  void _updatePostWithComments(Post updatedPost, Emitter<PostState> emit) {
    if (state is PostStateSuccess) {
      final currentState = state as PostStateSuccess;
      final updatedPosts = currentState.posts.map((post) {
        return post.id == updatedPost.id ? updatedPost : post;
      }).toList();
      emit(PostState.success(updatedPosts));
    }
  }
}
