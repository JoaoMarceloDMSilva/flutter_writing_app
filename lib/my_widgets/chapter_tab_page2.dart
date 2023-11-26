import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/chapter_container.dart';
import 'tab_bar_add.dart';


class ChapterTabPage2 extends StatelessWidget {
  final String chapterTitle;

  const ChapterTabPage2({Key? key, required this.chapterTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryAdd(chapterTitle: chapterTitle),
          ChapterTabContainer(
            title: "Título do Capítulo",
            description: "Descrição do Capítulo" * 5,
          ),
          ChapterTabContainer(
            title: "Título do Capítulo",
            description: "Descrição do Capítulo" * 5,
          ),
          ChapterTabContainer(
            title: "Título do Capítulo",
            description: "Descrição do Capítulo" * 5,
          ),
          ChapterTabContainer(
            title: "Título do Capítulo",
            description: "Descrição do Capítulo" * 5,
          ),
          ChapterTabContainer(
            title: "Título do Capítulo",
            description: "Descrição do Capítulo" * 5,
          ),
        ],
      ),
    );
  }
}
