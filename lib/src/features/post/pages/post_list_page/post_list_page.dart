import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_posts_and_comments_app/src/common/router/route_handler.dart';
import 'package:simple_posts_and_comments_app/src/features/post/cubit/post_bloc.dart';
import 'package:simple_posts_and_comments_app/src/features/post/pages/post_list_page/widgets/post_card/post_card.dart';
import 'package:simple_posts_and_comments_app/src/features/post/pages/post_list_page/widgets/post_card/post_card_placeholder.dart';

import '../../domain/models/post/post.dart';

part 'widgets/post_list_page_app_bar.dart';
part 'widgets/post_list_page_body.dart';

class PostListPage extends StatelessWidget {
  final PostBloc _postCubit;
  const PostListPage({super.key, required PostBloc postCubit})
      : _postCubit = postCubit;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const PostListPageAppBar(),
        body: PostListPageBody(postCubit: _postCubit),
      );
}
