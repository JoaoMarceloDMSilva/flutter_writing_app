import 'package:flutter/material.dart';
import 'package:flutter_writing_app/cosntants/images.dart';
import 'package:flutter_writing_app/cosntants/texto_titulo.dart';

class CardImage extends StatelessWidget {
  final String titulo, descricao; 
  const CardImage({super.key, required this.titulo, required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Images(
            imageName: "alba_umbra",
            heightImage: 100,
            largeImage: 100,
          ),
        TextTitulo("Rascunho Inicial")
        
        ],
      ),
    );
  }
}