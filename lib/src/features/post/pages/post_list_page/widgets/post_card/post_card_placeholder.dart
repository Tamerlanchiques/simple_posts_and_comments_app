import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:simple_posts_and_comments_app/src/common/widget/placeholders/line.dart';
import 'package:simple_posts_and_comments_app/src/features/post/pages/post_list_page/widgets/post_card/post_card_constants.dart';

class PostCardPlaceholder extends StatelessWidget {
  const PostCardPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
          child: Shimmer.fromColors(
        period: Durations.extralong4,
        baseColor: Colors.grey[400]!,
        highlightColor: Colors.grey[200]!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.grey,
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height / 3,
              child: Center(
                  child:
                      Icon(Icons.image_outlined, color: Colors.grey.shade300)),
            ),
            const ListTile(
              title: Column(
                children: [
                  PlaceholderLine(
                      color: PostCardConstants.titlePlaceholderColor),
                  SizedBox(
                      height: PostCardConstants.gapBetweenPlaceholderLines),
                  PlaceholderLine(
                      color: PostCardConstants.titlePlaceholderColor)
                ],
              ),
              subtitle: Column(
                children: [
                  SizedBox(
                      height: PostCardConstants.gapBetweenPlaceholderLines),
                  PlaceholderLine(),
                  SizedBox(
                      height: PostCardConstants.gapBetweenPlaceholderLines),
                  PlaceholderLine(),
                ],
              ),
            ),
          ],
        ),
      ));
}
