import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/my_app_bar.dart';

import '../routes/other_class_routes.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyAppBar(nameScreen: "Criar Nota", nameButton: "Criar",),
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
                decoration: InputDecoration(
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
                decoration: InputDecoration(
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
