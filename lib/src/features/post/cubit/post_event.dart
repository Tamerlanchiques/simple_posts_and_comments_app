part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.init() = Init;
  const factory PostEvent.loadPosts(Completer<void>? completer) = LoadPosts;
  const factory PostEvent.loadCommentsForPost(Post post,
      {@Default(false) bool forceRemote,
      Completer<void>? completer}) = LoadCommentsForPost;
}
