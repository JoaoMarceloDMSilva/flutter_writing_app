import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/card_image.dart';
import 'package:flutter_writing_app/my_widgets/my_app_bar.dart';

import '../classes/card_image_list.dart';
// import '../my_widgets/character_tab_page1.dart';
import '../routes/other_class_routes.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C2828),
        elevation: 0,
        title: const Text("Nome App"),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.settings),
        //   )
        // ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // MyAppBar(
            //   nameScreen: "Nome App",
            //   showIcon: false,
            //   showTextButton: false,
            // ),
            Expanded(
              child: ListView(
                children: cardImageList.cardTitles
                    .map((title) => CardImage(title: title))
                    .toList(),
              ),
            ),

            // // ),

            // Adicione outros widgets aqui, se necessário
          ],
        ),
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
