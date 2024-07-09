part of 'post_bloc.dart';

@freezed
sealed class PostState with _$PostState {
  const factory PostState.loading() = PostStateLoading;
  const factory PostState.success(List<Post> posts) = PostStateSuccess;
  const factory PostState.error(String message) = PostStateError;
}
