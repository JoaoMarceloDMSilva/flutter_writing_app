import 'package:flutter/material.dart';

Widget buildItem() {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child: Icon(
              Icons.add_photo_alternate, 
              size: 50,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 6),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Título",
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
