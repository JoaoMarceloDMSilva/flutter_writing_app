import 'package:flutter/material.dart';

class PrincipalChapter extends StatelessWidget {
  const PrincipalChapter({super.key});

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
        body: const Column(
          children: [
            TabBar(
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
          ],
        ),
      ),
    );
  }
}
