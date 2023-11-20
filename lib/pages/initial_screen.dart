import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/card_image.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C2828),
        elevation: 0,
        title: const Text("Nome App"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            CardImage()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff2C2828),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
