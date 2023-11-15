import 'package:flutter/material.dart';

AppBar getHomeAppBar()
{
  return AppBar(
    title: const Text("App Escrita"),
    centerTitle: true,
    backgroundColor: const Color(0xff2C2828),
    actions: 
    const [
      IconButton(
        icon: Icon(
          Icons.settings,
          color: Colors.white
          ),
        onPressed: => () {Navigator.pop(context);},    
      ),
    ],
  );
}