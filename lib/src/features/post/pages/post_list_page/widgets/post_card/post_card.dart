import 'package:flutter/material.dart';
import 'package:simple_posts_and_comments_app/src/features/post/pages/post_list_page/widgets/post_image.dart';

import '../../../../domain/models/post/post.dart';
import '../../../post_page/post_page_constants.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final VoidCallback? onTap;

  const PostCard({super.key, required this.post, this.onTap});

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Card(
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PostImage(
                  post: post,
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height / 3),
              ListTile(
                title: Hero(
                  tag: PostPageConstants.generatePostCardTitleHero(post.id),
                  child: Material(
                    color: Colors.transparent, // To avoid any visual artifacts
                    child: Text(post.title,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                subtitle: Text(post.body,
                    maxLines: 2, overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ),
      );
}
