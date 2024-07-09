import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../domain/models/post/post.dart';

class PostImage extends StatelessWidget {
  final Post post;
  final double? width;
  final double? height;

  const PostImage({super.key, required this.post, this.width, this.height});

  @override
  Widget build(BuildContext context) => Hero(
        tag: 'postImageHero${post.id}',
        child: post.hasPhoto
            ? CachedNetworkImage(
                width: width,
                height: height,
                imageUrl: post.photo!.url,
                placeholder: (context, url) => Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 200.0, // Adjust the height as needed
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
              )
            : const Placeholder(),
      );
}
