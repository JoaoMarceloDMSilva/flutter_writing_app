import 'package:flutter/material.dart';
import 'package:flutter_writing_app/database/hive/character/create_character.dart';
import 'package:flutter_writing_app/database/hive/hive_config.dart';
import 'package:flutter_writing_app/my_widgets/build_category_add_item.dart';
import 'package:flutter_writing_app/my_widgets/build_item.dart';
import 'package:flutter_writing_app/my_widgets/my_app_bar.dart';

import '../routes/other_class_routes.dart';
// import 'package:flutter_writing_app/my_widgets/tab_bar_add.dart';

class CreateCharcter extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController characterController = TextEditingController();
  CreateCharcter({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff2C2828),
      //   elevation: 0,
      //   title: const Text(
      //     "Personagem",
      //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //   ),
      //   leading: const Icon(
      //     Icons.arrow_back,
      //   ),
      //   actions: [
      //     TextButton(
      //       onPressed: () {
      //         // Adicione a lógica para salvar aqui
      //       },
      //       child: const Text(
      //         "Salvar",
      //         style: TextStyle(
      //           fontSize: 16,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: Column(
          children: [
            MyAppBar(
              nameScreen: "Personagem",
              nameButton: "Salvar",
              leftTap: () => Navigator.pop(context),
              rightTap: () async {
                String title = _titleController.text;
                String character = characterController.text;

                if (title.isNotEmpty && character.isNotEmpty) {
                  CreatePersonagem createPersonagem = CreatePersonagem(
                    nome: title,
                    descricao: character,
                  );

                  await HiveConfig.insertCharacter(createPersonagem);

                  Navigator.pushNamed(context, Routes.mainPage);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Preencha todos os campos"),
                    ),
                  );
                }
              },
            ),
            Expanded(
              child: ListView(
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Conexões",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
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
          ],
        ),
      ),
    );
  }
}
