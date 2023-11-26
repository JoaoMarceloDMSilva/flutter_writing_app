import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/build_category_add_item.dart';
import 'package:flutter_writing_app/my_widgets/build_item.dart';
// import 'package:flutter_writing_app/my_widgets/tab_bar_add.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C2828),
        elevation: 0,
        title: const Text(
          "Editar",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.arrow_back,
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Adicione a lógica para salvar aqui
            },
            child: const Text(
              "Salvar",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildItem(),
            buildCategoryAddItem(chapterTitle: "Personagens", itemName: "Nome Personagem"),
            buildCategoryAddItem(chapterTitle: "Capítulos", itemName: "Nome Capítulo"),
            buildCategoryAddItem(chapterTitle: "Notas", itemName: "Nome Nota"),
          ],
        ),
      ),
    );
  }

}