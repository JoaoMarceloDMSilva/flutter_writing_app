// import 'dart:ffi';

import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  final String? imageName;
  final double? heightImage, widthImage;
  Images({super.key, required this.imageName, this.heightImage, this.widthImage});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
    radius: 50,
    backgroundImage: AssetImage(
      "assets/images/$imageName.jpg",
      // height: heightImage,
      // width: widthImage,
    ),
    );
  }
}