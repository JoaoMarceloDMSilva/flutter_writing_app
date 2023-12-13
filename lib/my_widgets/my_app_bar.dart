import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_writing_app/cosntants/my_colors.dart';

import '../routes/other_class_routes.dart';

class MyAppBar extends StatelessWidget {
  final String nameScreen;
  String? nameButton;
  final bool showIcon;
  final bool showTextButton;
  final rightTap;
  final leftTap;
  MyAppBar(
      {super.key,
      required this.nameScreen,
      this.showIcon = true,
      this.showTextButton = true,
      this.nameButton,
      this.rightTap,
      this.leftTap,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
      color: MyColors().brown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (showIcon)
                InkWell(
                  onTap: leftTap,
                  // onTap: () {Navigator.pushNamed(context, anotherTap) ?? Navigator.pop(context);} ,
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              const SizedBox(
                width: 10,
              ),
              Text(
                nameScreen,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          if (showTextButton)
            TextButton(
              onPressed: rightTap,
              child: Text(
                nameButton!,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}