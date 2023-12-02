import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/chapter_tab_page2.dart';
import 'package:flutter_writing_app/my_widgets/character_tab_page1.dart';
import 'package:flutter_writing_app/my_widgets/my_app_bar.dart';
import 'package:flutter_writing_app/my_widgets/notes_tab_page3.dart';
// import 'package:flutter_writing_app/my_widgets/tab_bar_add.dart';

class MainChapter extends StatelessWidget {
  const MainChapter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              MyAppBar(
                nameScreen: "Titulo",
                nameButton: "Editar",
              ),
              Container(
                color: const Color(0xff2C2828), // Cor de fundo da AppBar
                child: TabBar(
                  indicatorColor: Colors.white, // Cor do indicador
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.group,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.auto_stories,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.history_edu,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // Página 1
                    ChapterTabPage1(chapterTitle: "Personagens"),
                    // Página 2
                    ChapterTabPage2(chapterTitle: "Capítulos"),
                    // Página 3
                    NotesTabPage3(chapterTitle: "Notas")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
