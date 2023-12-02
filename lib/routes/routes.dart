import 'package:flutter/material.dart';
import 'package:flutter_writing_app/pages/create_screen.dart';
import 'package:flutter_writing_app/pages/initial_screen.dart';
import 'package:flutter_writing_app/routes/other_class_routes.dart';

class MyRoutes {
  final routes = <String, WidgetBuilder>{
    Rename.initialScreen : (BuildContext context) => InitialScreen(),
    Rename.createNewHistory : (BuildContext context ) => CreateScreen()
  };
}