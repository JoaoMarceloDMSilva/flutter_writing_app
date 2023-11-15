import 'package:flutter/material.dart';

class HomeListItem extends StatefulWidget {
  const HomeListItem({super.key});

  @override
  State<HomeListItem> createState() => _HomeListItemState();
}

class _HomeListItemState extends State<HomeListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 10,
            color: Color(0xff2C2828),
          ),
          Container(
            color: Colors.white,
            child:Row(
              children: [
                
              ],
            ),
          )
        ],
      ),
    );
  }
}