import 'package:flutter/material.dart';

class PrincipalChapter extends StatelessWidget {
  const PrincipalChapter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff2C2828),
          elevation: 0,
          title: const Text("Título"),
          leading: const Icon(
            Icons.arrow_back,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            )
          ],
        ),
        body: Column(
          children: [
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
                  )
                ],
              ),
            ),
            // Adicione seus widgets adicionais aqui
          ],
        ),
      ),
    );
  }
}
