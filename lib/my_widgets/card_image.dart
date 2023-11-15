import 'package:flutter/material.dart';
import 'package:flutter_writing_app/cosntants/images.dart';
import 'package:flutter_writing_app/cosntants/texto_descricao.dart';
import 'package:flutter_writing_app/cosntants/texto_titulo.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Images(
            imageName: "alba_umbra",
            heightImage: 100,
            widthImage: 100,
          ),
          Column(children: [
            TextTitulo(titulo: "Tittulo Rascunho"),
            TextDescricao(descricao: "Tentando criar esse maldito card",)
          ],
          ),
        
        ],
      ),
    );
  }
}