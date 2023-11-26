import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/tab_bar_add.dart';

Widget buildCategoryAddItem({required String chapterTitle, required String itemName}) {
  return Container(
    padding: EdgeInsets.all(16),
    child: Column(
      children: [
        CategoryAdd(chapterTitle: chapterTitle),
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
