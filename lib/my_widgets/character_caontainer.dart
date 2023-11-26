import 'package:flutter/material.dart';

class CharacterContainer extends StatelessWidget {
  final String title;
  final String description;

  const CharacterContainer({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff9F9F9F),
        borderRadius: BorderRadius.circular(8),
      ),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width - 24,
      ),
      child: Row(
        children: [
          // Contêiner de círculo à esquerda
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey, // Cor de fundo do círculo
            ),
            child: Center(
              child: Icon(
                Icons.image, // Ícone padrão de imagem
                size: 30, // Tamanho do ícone
                color: Colors.black, // Cor do ícone
              ),
            ),
          ),
          SizedBox(width: 16), // Espaço entre os contêineres
          // Coluna à direita
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                // Adicione um Scroll para a descrição se necessário
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
