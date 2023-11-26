import 'package:flutter/material.dart';
import 'package:flutter_writing_app/pages/create_chapter.dart';
import 'package:flutter_writing_app/pages/create_character.dart';
import 'package:flutter_writing_app/pages/create_new_note.dart';
import 'package:flutter_writing_app/pages/edit_page.dart';
import 'package:flutter_writing_app/pages/principal_chapter.dart';
import 'package:flutter_writing_app/pages/create_screen.dart';
import 'package:flutter_writing_app/my_widgets/home_appbar.dart';
import 'package:flutter_writing_app/pages/initial_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitialScreen(), //Tela 01
      // home: CreateScreen(), // Tela 02
      // home: PrincipalChapter(), // Tela 03
      // home: CreateNote(), //Tela 04
      // home: EditPage(),
      // home: CreateChapter(),
      // home: CreateCharcter(),
    );
  }
}