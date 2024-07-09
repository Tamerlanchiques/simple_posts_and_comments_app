import 'package:flutter/material.dart';
import 'package:simple_posts_and_comments_app/src/common/widget/placeholders/line.dart';

import '../../../domain/models/comment/comment.dart';

class CommentTile extends StatelessWidget {
  final Comment comment;
  const CommentTile({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('${comment.email} wrote:'),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
                alignment: Alignment.centerLeft, child: Text(comment.body)))
      ],
    );
  }
}

class CommentTilePlaceholder extends StatelessWidget {
  const CommentTilePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: PlaceholderLine(),
        ),
        ...List.generate(
            3,
            (index) => const Padding(
                padding: EdgeInsets.all(16),
                child: PlaceholderLine(height: 10)))
      ],
    );
  }
}
