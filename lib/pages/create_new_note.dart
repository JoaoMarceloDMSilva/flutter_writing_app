import 'package:flutter/material.dart';

class CreateNote extends StatelessWidget {
  const CreateNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C2828),
        elevation: 0,
        title: const Text(
          "Nota",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.arrow_back,
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Adicione a lógica para salvar aqui
            },
            child: const Text(
              "Salvar",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            // CAIXA TEXTO INPUT TITULO
            padding: const EdgeInsets.all(12),
            // margin: EdgeInsets.only(top: 5),
            child: TextField( // TÍTULO
              decoration: InputDecoration(
                hintText: "Título",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            // CAIXA TEXTO INPUT TEXTO
            padding: const EdgeInsets.all(12),
            // margin: EdgeInsets.only(top: 5),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Texto",
                border: OutlineInputBorder(),
              ),
              maxLines: null, // ou maxLines: true,
            ),
          ),
        ],
      ),
    );
  }
}
