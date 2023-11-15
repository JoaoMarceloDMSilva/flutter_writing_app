import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/home_lisit_model.dart';
// import 'package:flutter_writing_app/my_widgets/home_list_item.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  List<HomeListModel> tempMockedList = [HomeListModel(title: "Rascunho")];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(color: Colors.white,)
        ],
      ),
    );
  }
}