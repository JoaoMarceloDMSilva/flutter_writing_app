import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/tab_bar_add.dart';

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
}

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
