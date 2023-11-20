import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C2828),
        elevation: 0,
        title: const Text("Nome App"),
        actions: [
          IconButton(onPressed: () {}, 
          icon: const Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
