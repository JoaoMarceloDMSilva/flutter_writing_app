import 'package:flutter/material.dart';
import 'package:flutter_writing_app/pages/create_chapter.dart';
import 'package:flutter_writing_app/pages/create_character.dart';
import 'package:flutter_writing_app/pages/create_new_note.dart';
import 'package:flutter_writing_app/pages/create_screen.dart';
import 'package:flutter_writing_app/pages/edit_page.dart';
import 'package:flutter_writing_app/pages/initial_screen.dart';
import 'package:flutter_writing_app/pages/main_chapter.dart';
import 'package:flutter_writing_app/routes/other_class_routes.dart';

class MyRoutes {
  final routes = <String, WidgetBuilder>{
    Routes.initialScreen : ( context) => InitialScreen(),
    Routes.createNewHistory : ( context ) => CreateNewHistory(),
    Routes.mainPage : ( context ) => MainPage(),
    Routes.editPage : ( context ) => EditPage(),
    Routes.createNote : ( context ) => CreateNewNote(),
    Routes.createChapter : ( context ) => CreateChapter(),
    Routes.createCharacter: ( context ) => CreateCharcter(),
  };
}