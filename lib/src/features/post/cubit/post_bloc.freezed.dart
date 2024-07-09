// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Completer<void>? completer) loadPosts,
    required TResult Function(
            Post post, bool forceRemote, Completer<void>? completer)
        loadCommentsForPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Completer<void>? completer)? loadPosts,
    TResult? Function(Post post, bool forceRemote, Completer<void>? completer)?
        loadCommentsForPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Completer<void>? completer)? loadPosts,
    TResult Function(Post post, bool forceRemote, Completer<void>? completer)?
        loadCommentsForPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LoadPosts value) loadPosts,
    required TResult Function(LoadCommentsForPost value) loadCommentsForPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(LoadPosts value)? loadPosts,
    TResult? Function(LoadCommentsForPost value)? loadCommentsForPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LoadPosts value)? loadPosts,
    TResult Function(LoadCommentsForPost value)? loadCommentsForPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res, PostEvent>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res, $Val extends PostEvent>
    implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'PostEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Completer<void>? completer) loadPosts,
    required TResult Function(
            Post post, bool forceRemote, Completer<void>? completer)
        loadCommentsForPost,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Completer<void>? completer)? loadPosts,
    TResult? Function(Post post, bool forceRemote, Completer<void>? completer)?
        loadCommentsForPost,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Completer<void>? completer)? loadPosts,
    TResult Function(Post post, bool forceRemote, Completer<void>? completer)?
        loadCommentsForPost,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LoadPosts value) loadPosts,
    required TResult Function(LoadCommentsForPost value) loadCommentsForPost,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(LoadPosts value)? loadPosts,
    TResult? Function(LoadCommentsForPost value)? loadCommentsForPost,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LoadPosts value)? loadPosts,
    TResult Function(LoadCommentsForPost value)? loadCommentsForPost,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements PostEvent {
  const factory Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$LoadPostsImplCopyWith<$Res> {
  factory _$$LoadPostsImplCopyWith(
          _$LoadPostsImpl value, $Res Function(_$LoadPostsImpl) then) =
      __$$LoadPostsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Completer<void>? completer});
}

/// @nodoc
class __$$LoadPostsImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$LoadPostsImpl>
    implements _$$LoadPostsImplCopyWith<$Res> {
  __$$LoadPostsImplCopyWithImpl(
      _$LoadPostsImpl _value, $Res Function(_$LoadPostsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completer = freezed,
  }) {
    return _then(_$LoadPostsImpl(
      freezed == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<void>?,
    ));
  }
}

/// @nodoc

class _$LoadPostsImpl implements LoadPosts {
  const _$LoadPostsImpl(this.completer);

  @override
  final Completer<void>? completer;

  @override
  String toString() {
    return 'PostEvent.loadPosts(completer: $completer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPostsImpl &&
            (identical(other.completer, completer) ||
                other.completer == completer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, completer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPostsImplCopyWith<_$LoadPostsImpl> get copyWith =>
      __$$LoadPostsImplCopyWithImpl<_$LoadPostsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Completer<void>? completer) loadPosts,
    required TResult Function(
            Post post, bool forceRemote, Completer<void>? completer)
        loadCommentsForPost,
  }) {
    return loadPosts(completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Completer<void>? completer)? loadPosts,
    TResult? Function(Post post, bool forceRemote, Completer<void>? completer)?
        loadCommentsForPost,
  }) {
    return loadPosts?.call(completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Completer<void>? completer)? loadPosts,
    TResult Function(Post post, bool forceRemote, Completer<void>? completer)?
        loadCommentsForPost,
    required TResult orElse(),
  }) {
    if (loadPosts != null) {
      return loadPosts(completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LoadPosts value) loadPosts,
    required TResult Function(LoadCommentsForPost value) loadCommentsForPost,
  }) {
    return loadPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(LoadPosts value)? loadPosts,
    TResult? Function(LoadCommentsForPost value)? loadCommentsForPost,
  }) {
    return loadPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LoadPosts value)? loadPosts,
    TResult Function(LoadCommentsForPost value)? loadCommentsForPost,
    required TResult orElse(),
  }) {
    if (loadPosts != null) {
      return loadPosts(this);
    }
    return orElse();
  }
}

abstract class LoadPosts implements PostEvent {
  const factory LoadPosts(final Completer<void>? completer) = _$LoadPostsImpl;

  Completer<void>? get completer;
  @JsonKey(ignore: true)
  _$$LoadPostsImplCopyWith<_$LoadPostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCommentsForPostImplCopyWith<$Res> {
  factory _$$LoadCommentsForPostImplCopyWith(_$LoadCommentsForPostImpl value,
          $Res Function(_$LoadCommentsForPostImpl) then) =
      __$$LoadCommentsForPostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Post post, bool forceRemote, Completer<void>? completer});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$LoadCommentsForPostImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$LoadCommentsForPostImpl>
    implements _$$LoadCommentsForPostImplCopyWith<$Res> {
  __$$LoadCommentsForPostImplCopyWithImpl(_$LoadCommentsForPostImpl _value,
      $Res Function(_$LoadCommentsForPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? forceRemote = null,
    Object? completer = freezed,
  }) {
    return _then(_$LoadCommentsForPostImpl(
      null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      forceRemote: null == forceRemote
          ? _value.forceRemote
          : forceRemote // ignore: cast_nullable_to_non_nullable
              as bool,
      completer: freezed == completer
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<void>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$LoadCommentsForPostImpl implements LoadCommentsForPost {
  const _$LoadCommentsForPostImpl(this.post,
      {this.forceRemote = false, this.completer});

  @override
  final Post post;
  @override
  @JsonKey()
  final bool forceRemote;
  @override
  final Completer<void>? completer;

  @override
  String toString() {
    return 'PostEvent.loadCommentsForPost(post: $post, forceRemote: $forceRemote, completer: $completer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCommentsForPostImpl &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.forceRemote, forceRemote) ||
                other.forceRemote == forceRemote) &&
            (identical(other.completer, completer) ||
                other.completer == completer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post, forceRemote, completer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCommentsForPostImplCopyWith<_$LoadCommentsForPostImpl> get copyWith =>
      __$$LoadCommentsForPostImplCopyWithImpl<_$LoadCommentsForPostImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Completer<void>? completer) loadPosts,
    required TResult Function(
            Post post, bool forceRemote, Completer<void>? completer)
        loadCommentsForPost,
  }) {
    return loadCommentsForPost(post, forceRemote, completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Completer<void>? completer)? loadPosts,
    TResult? Function(Post post, bool forceRemote, Completer<void>? completer)?
        loadCommentsForPost,
  }) {
    return loadCommentsForPost?.call(post, forceRemote, completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Completer<void>? completer)? loadPosts,
    TResult Function(Post post, bool forceRemote, Completer<void>? completer)?
        loadCommentsForPost,
    required TResult orElse(),
  }) {
    if (loadCommentsForPost != null) {
      return loadCommentsForPost(post, forceRemote, completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LoadPosts value) loadPosts,
    required TResult Function(LoadCommentsForPost value) loadCommentsForPost,
  }) {
    return loadCommentsForPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(LoadPosts value)? loadPosts,
    TResult? Function(LoadCommentsForPost value)? loadCommentsForPost,
  }) {
    return loadCommentsForPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LoadPosts value)? loadPosts,
    TResult Function(LoadCommentsForPost value)? loadCommentsForPost,
    required TResult orElse(),
  }) {
    if (loadCommentsForPost != null) {
      return loadCommentsForPost(this);
    }
    return orElse();
  }
}

abstract class LoadCommentsForPost implements PostEvent {
  const factory LoadCommentsForPost(final Post post,
      {final bool forceRemote,
      final Completer<void>? completer}) = _$LoadCommentsForPostImpl;

  Post get post;
  bool get forceRemote;
  Completer<void>? get completer;
  @JsonKey(ignore: true)
  _$$LoadCommentsForPostImplCopyWith<_$LoadCommentsForPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Post> posts) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Post> posts)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostStateLoading value) loading,
    required TResult Function(PostStateSuccess value) success,
    required TResult Function(PostStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostStateLoading value)? loading,
    TResult? Function(PostStateSuccess value)? success,
    TResult? Function(PostStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostStateLoading value)? loading,
    TResult Function(PostStateSuccess value)? success,
    TResult Function(PostStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostStateLoadingImplCopyWith<$Res> {
  factory _$$PostStateLoadingImplCopyWith(_$PostStateLoadingImpl value,
          $Res Function(_$PostStateLoadingImpl) then) =
      __$$PostStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostStateLoadingImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostStateLoadingImpl>
    implements _$$PostStateLoadingImplCopyWith<$Res> {
  __$$PostStateLoadingImplCopyWithImpl(_$PostStateLoadingImpl _value,
      $Res Function(_$PostStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostStateLoadingImpl implements PostStateLoading {
  const _$PostStateLoadingImpl();

  @override
  String toString() {
    return 'PostState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Post> posts) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Post> posts)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostStateLoading value) loading,
    required TResult Function(PostStateSuccess value) success,
    required TResult Function(PostStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostStateLoading value)? loading,
    TResult? Function(PostStateSuccess value)? success,
    TResult? Function(PostStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostStateLoading value)? loading,
    TResult Function(PostStateSuccess value)? success,
    TResult Function(PostStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PostStateLoading implements PostState {
  const factory PostStateLoading() = _$PostStateLoadingImpl;
}

/// @nodoc
abstract class _$$PostStateSuccessImplCopyWith<$Res> {
  factory _$$PostStateSuccessImplCopyWith(_$PostStateSuccessImpl value,
          $Res Function(_$PostStateSuccessImpl) then) =
      __$$PostStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> posts});
}

/// @nodoc
class __$$PostStateSuccessImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostStateSuccessImpl>
    implements _$$PostStateSuccessImplCopyWith<$Res> {
  __$$PostStateSuccessImplCopyWithImpl(_$PostStateSuccessImpl _value,
      $Res Function(_$PostStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$PostStateSuccessImpl(
      null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$PostStateSuccessImpl implements PostStateSuccess {
  const _$PostStateSuccessImpl(final List<Post> posts) : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'PostState.success(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStateSuccessImplCopyWith<_$PostStateSuccessImpl> get copyWith =>
      __$$PostStateSuccessImplCopyWithImpl<_$PostStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Post> posts) success,
    required TResult Function(String message) error,
  }) {
    return success(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Post> posts)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostStateLoading value) loading,
    required TResult Function(PostStateSuccess value) success,
    required TResult Function(PostStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostStateLoading value)? loading,
    TResult? Function(PostStateSuccess value)? success,
    TResult? Function(PostStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostStateLoading value)? loading,
    TResult Function(PostStateSuccess value)? success,
    TResult Function(PostStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PostStateSuccess implements PostState {
  const factory PostStateSuccess(final List<Post> posts) =
      _$PostStateSuccessImpl;

  List<Post> get posts;
  @JsonKey(ignore: true)
  _$$PostStateSuccessImplCopyWith<_$PostStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostStateErrorImplCopyWith<$Res> {
  factory _$$PostStateErrorImplCopyWith(_$PostStateErrorImpl value,
          $Res Function(_$PostStateErrorImpl) then) =
      __$$PostStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PostStateErrorImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostStateErrorImpl>
    implements _$$PostStateErrorImplCopyWith<$Res> {
  __$$PostStateErrorImplCopyWithImpl(
      _$PostStateErrorImpl _value, $Res Function(_$PostStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PostStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostStateErrorImpl implements PostStateError {
  const _$PostStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PostState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStateErrorImplCopyWith<_$PostStateErrorImpl> get copyWith =>
      __$$PostStateErrorImplCopyWithImpl<_$PostStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Post> posts) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Post> posts)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostStateLoading value) loading,
    required TResult Function(PostStateSuccess value) success,
    required TResult Function(PostStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostStateLoading value)? loading,
    TResult? Function(PostStateSuccess value)? success,
    TResult? Function(PostStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostStateLoading value)? loading,
    TResult Function(PostStateSuccess value)? success,
    TResult Function(PostStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostStateError implements PostState {
  const factory PostStateError(final String message) = _$PostStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PostStateErrorImplCopyWith<_$PostStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
