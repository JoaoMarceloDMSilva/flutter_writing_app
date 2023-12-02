import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/tab_bar_add.dart';
import 'package:flutter_writing_app/routes/other_class_routes.dart';

class CategoryAddItem extends StatelessWidget {
  final String chapterTitle;
  final String itemName;
  final screenPointer;
  const CategoryAddItem({super.key, required this.chapterTitle, required this.itemName, this.screenPointer});

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.all(16),
    child: Column(
      children: [
        CategoryAdd(myTitle: chapterTitle, tap: () => Navigator.pushNamed(context, screenPointer),),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12),
                color: Colors.grey,
                child: Text(
                  itemName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Adicione a lógica para excluir aqui
              },
            ),
          ],
        ),
      ],
    ),
  );
}

  }