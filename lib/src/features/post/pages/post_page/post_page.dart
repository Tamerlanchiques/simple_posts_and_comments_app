import 'dart:async';

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_posts_and_comments_app/src/features/post/cubit/post_bloc.dart';
import 'package:simple_posts_and_comments_app/src/features/post/pages/post_list_page/widgets/post_image.dart';
import 'package:simple_posts_and_comments_app/src/features/post/pages/post_page/post_page_constants.dart';
import 'package:simple_posts_and_comments_app/src/features/post/pages/post_page/widgets/comment_tile.dart';

import '../../domain/models/post/post.dart';

part 'widgets/post_page_app_bar.dart';
part 'widgets/post_page_body.dart';

class PostPage extends StatefulWidget {
  final Post initialData;
  final PostBloc postBloc;
  const PostPage(
      {super.key, required this.initialData, required this.postBloc});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  void initState() {
    super.initState();
    widget.postBloc.add(LoadCommentsForPost(widget.initialData));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PostPageAppBar(),
      body: PostPageBody(
        initialData: widget.initialData,
        postBloc: widget.postBloc,
      ),
    );
  }
}
