import 'package:flutter/material.dart';
import 'package:flutter_writing_app/pages/create_screen.dart';
//import 'package:flutter_writing_app/my_widgets/home_appbar.dart';
import 'package:flutter_writing_app/pages/initial_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: InitialScreen(),
      home: CreateScreen(),
    );
  }
}