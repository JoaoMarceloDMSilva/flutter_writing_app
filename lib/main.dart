import 'package:flutter/material.dart';
import 'package:flutter_writing_app/pages/initial_screen.dart';

void main(List<String> args) {
  runApp(const Rotas());
}
class Rotas extends StatelessWidget {
  const Rotas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "initial_screen",
      routes: {
        "initial_screen":(context) => InitialScreen(),
      },
    );
  }
}