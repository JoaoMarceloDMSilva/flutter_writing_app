import 'package:flutter/material.dart';
import 'tab_bar_add.dart';

class ChapterTabPage2 extends StatelessWidget {
  final String chapterTitle;

  const ChapterTabPage2({Key? key, required this.chapterTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBarAdd(chapterTitle: chapterTitle),
        // Contêiner adicional com Scroll para a descrição
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xff9F9F9F),
            borderRadius: BorderRadius.circular(8),
          ),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 24, // Largura máxima respeitando a margem de 12 nas laterais
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Título do Conteúdo",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Descrição do Conteúdo" * 20, // Exemplo de descrição longa para testar o scroll
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        // Outros widgets da página
      ],
    );
  }
}