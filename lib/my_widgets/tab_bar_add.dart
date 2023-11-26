import 'package:flutter/material.dart';

class TabBarAdd extends StatelessWidget {
  final String chapterTitle;

  const TabBarAdd({Key? key, required this.chapterTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Linha com texto do capítulo e botão "+"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                chapterTitle,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Adicione a lógica aqui
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
          // Linha com margem nas laterais
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 1,
            color: Colors.black,
          ),
          // Outros widgets da página
        ],
      ),
    );
  }
}
