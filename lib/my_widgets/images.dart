// import 'dart:ffi';

import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  final String? imageName;
  final double? heightImage, largeImage;
  Images({super.key, required this.imageName, this.heightImage, this.largeImage});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$imageName.jpg",
      height: heightImage,
    );
  }
}