import 'package:flutter/material.dart';
import 'package:flutter_writing_app/database/hive/myhistory/create_history.dart';
// import 'package:flutter_writing_app/database/hive/chapter/create_history.dart';
import 'package:flutter_writing_app/my_widgets/my_app_bar.dart';

// import '../classes/card_image_list.dart';
// import '../database/hive/create_history.dart';
import '../database/hive/hive_config.dart';
import '../routes/other_class_routes.dart';

class CreateNewHistory extends StatelessWidget {
  CreateNewHistory({super.key});
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController characterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyAppBar(
              nameScreen: "Criar Historia",
              nameButton: "Criar",
              leftTap: () => Navigator.pop(context),
              rightTap: () async {
                String title = _titleController.text;
                String character = characterController.text;

                if (title.isNotEmpty && character.isNotEmpty) {
                  CreateHistory createHistory = CreateHistory(
                    title: title,
                    character: character,
                  );

                  await HiveConfig.insertHistory(createHistory);

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
            Container(
              // PRIMEIRO CONTAINER
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(top: 15),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Criar uma História",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Para  começar, você precisa dar um título à sua obra:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Container(
              // CAIXA TEXTO INPUT TITULO
              padding: const EdgeInsets.all(12),
              // margin: EdgeInsets.only(top: 5),
              child: TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  hintText: "Título",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(20),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Adicionar Personagens",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "O que é uma história sem personagens? Adicione pelo menos um personagem. Você poderá editá-lo melhor e adicionar mais outros porsteriormente.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                )),
            Container(
              // CAIXA TEXTO INPUT TITULO
              padding: const EdgeInsets.all(12),
              // margin: EdgeInsets.only(top: 5),
              child: TextField(
                controller: characterController,
                decoration: const InputDecoration(
                  hintText: "Personagem",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}