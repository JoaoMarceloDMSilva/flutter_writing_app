// import 'dart:ffi';

import 'package:flutter/material.dart';

class TextTitulo extends StatelessWidget {
  final String titulo;
  const TextTitulo({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Text(
      titulo,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
    );
  }
}