part of '../post_page.dart';

class PostPageBody extends StatelessWidget {
  final Post initialData;
  final PostBloc postBloc;

  const PostPageBody(
      {super.key, required this.initialData, required this.postBloc});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: () async {
          final completer = Completer<void>();
          postBloc.add(LoadCommentsForPost(initialData,
              forceRemote: true, completer: completer));
          await completer.future;
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              _PostPagePostSection(initialData: initialData),
              const Divider(),
              const Text('Comments'),
              const Divider(),
              _PostPageCommentsSection(
                  initialData: initialData, postBloc: postBloc)
            ],
          ),
        ));
  }
}

class _PostPagePostSection extends StatelessWidget {
  final Post initialData;
  const _PostPagePostSection({
    required this.initialData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PostImage(
              post: initialData,
              width: double.infinity,
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.black.withOpacity(0.5),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              width: double.infinity,
              child: Hero(
                  tag: PostPageConstants.generatePostCardTitleHero(
                      initialData.id),
                  child: Material(
                    color: Colors.transparent, // To avoid any visual artifacts
                    child: Text(
                      initialData.title,
                      style: const TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 16,
                      ),
                    ),
                  )),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Align(
              alignment: Alignment.centerLeft, child: Text(initialData.body)),
        )
      ],
    );
  }
}

class _PostPageCommentsSection extends StatelessWidget {
  final Post initialData;
  final PostBloc postBloc;

  const _PostPageCommentsSection(
      {required this.initialData, required this.postBloc});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      bloc: postBloc,
      builder: (context, state) {
        if (state is PostStateSuccess) {
          final currentPost =
              state.posts.firstWhereOrNull((p) => p.id == initialData.id);

          if (currentPost == null) {
            return const SizedBox.shrink();
          } else if (currentPost.comments == null) {
            return Column(
              children:
                  List.generate(3, (index) => const CommentTilePlaceholder()),
            );
          } else if (currentPost.comments!.isEmpty) {
            return const Text('No comments');
          }

          return ListView.separated(
            padding: const EdgeInsets.only(bottom: 80),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: currentPost.comments!.length,
            itemBuilder: (context, index) {
              final comment = currentPost.comments![index];
              return Column(
                children: [CommentTile(comment: comment)],
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          );
        }
        return Column(
          children: List.generate(3, (index) => const CommentTilePlaceholder()),
        );
      },
    );
  }
}
