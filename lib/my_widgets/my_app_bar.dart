import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_writing_app/cosntants/my_colors.dart';

import '../routes/other_class_routes.dart';

class MyAppBar extends StatelessWidget {
  final String nameScreen;
  final String nameButton;
  final bool showIcon;
  final bool showTextButton;
  const MyAppBar(
      {super.key,
      required this.nameScreen,
      this.showIcon = true,
      this.showTextButton = true,
      required this.nameButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
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
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              SizedBox(
                width: 10,
              ),
              Text(
                nameScreen,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          if (showTextButton)
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.mainPage);
              },
              child: Text(
                nameButton,
                style: TextStyle(
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
