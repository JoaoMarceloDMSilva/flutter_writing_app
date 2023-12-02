import 'package:flutter/material.dart';
import 'package:flutter_writing_app/main.dart';
import 'package:flutter_writing_app/my_widgets/build_category_add_item.dart';
import 'package:flutter_writing_app/my_widgets/build_item.dart';
import 'package:flutter_writing_app/my_widgets/my_app_bar.dart';
import 'package:flutter_writing_app/routes/other_class_routes.dart';
// import 'package:flutter_writing_app/my_widgets/tab_bar_add.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff2C2828),
      //   elevation: 0,
      //   title: const Text(
      //     "Editar",
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
            MyAppBar(nameButton: "Salvar", nameScreen: "Editar",tap: () => Navigator.pop(context)),
            Expanded(child: ListView(children: [
              buildItem(),
            CategoryAddItem(chapterTitle: "Personagens", itemName: "Nome Personagem", screenPointer: Routes.createCharacter,),
            CategoryAddItem(chapterTitle: "Capítulos", itemName: "Nome Capítulo", screenPointer: Routes.createChapter,),
            CategoryAddItem(chapterTitle: "Notas", itemName: "Nome Nota", screenPointer: Routes.createNote,),
            ]),)
            
          ],
        ),
      ),
    );
  }

}