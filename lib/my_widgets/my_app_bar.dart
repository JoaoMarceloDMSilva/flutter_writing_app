import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_writing_app/cosntants/my_colors.dart';

class MyAppBar extends StatelessWidget {
  final String nameScreen;
  final bool showIcon;
  const MyAppBar({super.key, required this.nameScreen, this.showIcon = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
      color: MyColors().brown,
      child: Stack(
        
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
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
