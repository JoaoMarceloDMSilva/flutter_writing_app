// import 'dart:ffi';

import 'package:flutter/material.dart';

class TextDescricao extends StatelessWidget {
  final String descricao;
  const TextDescricao({super.key, required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Text(
      descricao,
      style: const TextStyle(
        fontSize: 13,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}