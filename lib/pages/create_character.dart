import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/build_category_add_item.dart';
import 'package:flutter_writing_app/my_widgets/build_item.dart';
// import 'package:flutter_writing_app/my_widgets/tab_bar_add.dart';

class CreateCharcter extends StatelessWidget {
  const CreateCharcter({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C2828),
        elevation: 0,
        title: const Text(
          "Personagem",
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
            Container(
              // CAIXA TEXTO INPUT TEXTO
              padding: const EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Descrição",
                  border: OutlineInputBorder(),
                ),
                maxLines: null,
              ),
            ),
            Container(
              // TEXTO: Imagem e botão "+"
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Conexões",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      // Lógica Aqui
                    },
                    child: const Icon(
                      Icons.add,
                      size: 24,
                      color: Colors.black, // Cor do ícone
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}