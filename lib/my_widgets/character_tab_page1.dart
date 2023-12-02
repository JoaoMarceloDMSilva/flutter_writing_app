import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/character_caontainer.dart';
import 'package:flutter_writing_app/routes/other_class_routes.dart';
import 'tab_bar_add.dart';

class ChapterTabPage1 extends StatelessWidget {
  final String chapterTitle;

  const ChapterTabPage1({Key? key, required this.chapterTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryAdd(myTitle: chapterTitle, tap: () => Navigator.pushNamed(context, Routes.createCharacter),),
          CharacterContainer(
            title: "Nome do Personagem",
            description: "Descrição do Personagem" * 5,
          ),
          CharacterContainer(
            title: "Nome do Personagem",
            description: "Descrição do Personagem" * 5,
          ),
          CharacterContainer(
            title: "Nome do Personagem",
            description: "Descrição do Personagem" * 5,
          ),
          CharacterContainer(
            title: "Nome do Personagem",
            description: "Descrição do Personagem" * 5,
          ),
          CharacterContainer(
            title: "Nome do Personagem",
            description: "Descrição do Personagem" * 5,
          ),
          CharacterContainer(
            title: "Nome do Personagem",
            description: "Descrição do Personagem" * 5,
          ),
          CharacterContainer(
            title: "Nome do Personagem",
            description: "Descrição do Personagem" * 5,
          ),
          // Adicione mais CharacterContainers conforme necessário
        ],
      ),
    );
  }
}
