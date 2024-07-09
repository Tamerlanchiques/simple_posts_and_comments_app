import 'package:freezed_annotation/freezed_annotation.dart';

import '../photo/photo.dart';
import '../comment/comment.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post(
      {required int userId,
      required int id,
      required String title,
      required String body,
      Photo? photo,
      List<Comment>? comments}) = _Post;

  const Post._();

  bool get hasPhoto => photo != null;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
