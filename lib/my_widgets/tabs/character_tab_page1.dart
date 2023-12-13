import 'package:flutter/material.dart';
import 'package:flutter_writing_app/database/hive/hive_config.dart';
import 'package:flutter_writing_app/database/hive/myhistory/create_history.dart';
import 'package:flutter_writing_app/my_widgets/character_caontainer.dart';
import 'package:flutter_writing_app/my_widgets/tab_bar_add.dart';
import 'package:flutter_writing_app/routes/other_class_routes.dart';
// import '../database/hive/create_history.dart';
// import '../database/hive/hive_config.dart';
// import 'tab_bar_add.dart';

class ChapterTabPage1 extends StatelessWidget {
  final String chapterTitle;

  const ChapterTabPage1({Key? key, required this.chapterTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CreateHistory>>(
      future: HiveConfig.viewHistory(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Erro: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Text('Nenhuma história encontrada.');
        } else {
          String lastSavedChapter = snapshot.data!.last.character;
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryAdd(
                  myTitle: chapterTitle,
                  tap: () =>
                      Navigator.pushNamed(context, Routes.createCharacter),
                ),
                CharacterContainer(
                  title: lastSavedChapter,
                  description: "Descrição do Personagem" * 5,
                ),
              ],
            ),
          );
        }
      },
    );
  }
}