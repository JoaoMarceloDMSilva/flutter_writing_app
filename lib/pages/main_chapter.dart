import 'package:flutter/material.dart';
// import 'package:flutter_writing_app/my_widgets/chapter_tab_page2.dart';
// import 'package:flutter_writing_app/my_widgets/character_tab_page1.dart';
import 'package:flutter_writing_app/my_widgets/my_app_bar.dart';
// import 'package:flutter_writing_app/my_widgets/notes_tab_page3.dart';
import 'package:flutter_writing_app/my_widgets/tabs/chapter_tab_page2.dart';
import 'package:flutter_writing_app/my_widgets/tabs/character_tab_page1.dart';
import 'package:flutter_writing_app/my_widgets/tabs/notes_tab_page3.dart';

import '../database/hive/myhistory/create_history.dart';
import '../database/hive/hive_config.dart';
import '../routes/other_class_routes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
          String lastSavedTitle = snapshot.data!.last.title;

          return DefaultTabController(
            length: 3,
            child: Scaffold(
              body: SafeArea(
                child: Column(
                  children: [
                    MyAppBar(
                      nameScreen: lastSavedTitle,
                      nameButton: "Editar",
                      leftTap: () => Navigator.pushNamed(context, Routes.initialScreen),
                      rightTap: () => Navigator.pushNamed(context, Routes.editPage),
                      // leftTap: Routes.initialScreen,
                    ),
                    Container(
                      color: const Color(0xff2C2828), // Cor de fundo da AppBar
                      child: const TabBar(
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
      },
    );
  }
}