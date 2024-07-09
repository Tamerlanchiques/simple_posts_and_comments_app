part of '../post_list_page.dart';

class PostListPageBody extends StatelessWidget {
  final PostBloc _postCubit;

  const PostListPageBody({super.key, required PostBloc postCubit})
      : _postCubit = postCubit;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
        bloc: _postCubit,
        builder: (context, state) {
          switch (state) {
            case PostStateLoading():
              return const _PostListPageBodyLoading();
            case PostStateSuccess(:final posts):
              return _PostListPageBodySuccess(
                  posts: posts, postBloc: _postCubit);
            case PostStateError(:final message):
              return _PostListPageBodyError(message: message);
            default:
              throw UnimplementedError('Unknown state: $state');
          }
        });
  }
}

class _PostListPageBodyLoading extends StatelessWidget {
  const _PostListPageBodyLoading();

  @override
  Widget build(BuildContext context) => ListView(
        children: List.generate(3, (index) => const PostCardPlaceholder()),
      );
}

class _PostListPageBodySuccess extends StatelessWidget {
  final List<Post> posts;
  final PostBloc postBloc;

  const _PostListPageBodySuccess({
    Key? key,
    required this.posts,
    required this.postBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RefreshIndicator(
        onRefresh: () async {
          final completer = Completer<void>();
          postBloc.add(LoadPosts(completer));
          await completer.future;
        },
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            return PostCard(
              post: post,
              onTap: () =>
                  Navigator.of(context).pushNamed(postRoute, arguments: post),
            );
          },
        ),
      );
}

class _PostListPageBodyError extends StatelessWidget {
  final String message;
  const _PostListPageBodyError({required this.message});

  @override
  Widget build(BuildContext context) => Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Error occured. Here is message: $message'),
      ));
}
