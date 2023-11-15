import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final double imageWidth;
  final double imageHeight;
  Avatar(
      {required this.displayImage,
      required this.imageWidth,
      required this.imageHeight});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(300),
        child: Image.asset(
          displayImage,
          width: imageWidth,
          height: imageHeight,
        ),
      ),
    );
  }
}
