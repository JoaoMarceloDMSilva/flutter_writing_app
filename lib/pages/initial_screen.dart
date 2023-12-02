import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/card_image.dart';
import 'package:flutter_writing_app/my_widgets/my_app_bar.dart';

import '../my_widgets/character_tab_page1.dart';
import '../routes/other_class_routes.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff2C2828),
      //   elevation: 0,
      //   title: const Text("Nome App"),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.settings),
      //     )
      //   ],
      // ),
      body: Column(
        
          children: [
            MyAppBar(
              nameScreen: "Nome App",
              showIcon: false,
            ),
            
              ChapterTabPage1(chapterTitle: "Personagens")
            //   CardImage(),
            //   CardImage(),
            //   CardImage(),
            //   CardImage(),
            //   CardImage(),
            //   CardImage(),
            //   CardImage(),
            //   CardImage(),
            //   CardImage(),
            //   CardImage(),
            // // ),

            // Adicione outros widgets aqui, se necessário
          ],
        
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff2C2828),
        onPressed: () {
          Navigator.pushNamed(context, Routes.createNewHistory);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
