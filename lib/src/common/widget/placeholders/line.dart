import 'package:flutter/material.dart';

/// A widget that displays a horizontal line placeholder with a specified color, width, and height.
class PlaceholderLine extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  /// Creates a [PlaceholderLine] widget.
  ///
  /// The [color] parameter specifies the color of the line. The default value is [Colors.white24].
  ///
  /// The [width] parameter specifies the width of the line. The default value is [double.infinity].
  ///
  /// The [height] parameter specifies the height of the line. The default value is 14.
  const PlaceholderLine({
    super.key,
    this.color = Colors.white24,
    this.width = double.infinity,
    this.height = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: width,
      height: height,
    );
  }
}
