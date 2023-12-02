import 'package:flutter/material.dart';

import '../routes/other_class_routes.dart';

class CategoryAdd extends StatelessWidget {
  final String myTitle;
  final tap;

  const CategoryAdd({Key? key, required this.myTitle, this.tap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Linha com texto do capítulo e botão "+"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                myTitle,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: tap,
                icon: Icon(Icons.add),
              ),
            ],
          ),
          // Linha com margem nas laterais
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 1,
            color: Colors.black,
          ),
          // Outros widgets da página
        ],
      ),
    );
  }
}
