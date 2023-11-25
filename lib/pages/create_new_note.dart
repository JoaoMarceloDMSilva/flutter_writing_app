import 'package:flutter/material.dart';

class CreateNote extends StatelessWidget {
  const CreateNote({Key? key}) : super(key: key);

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
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // CAIXA TEXTO INPUT TITULO
              padding: const EdgeInsets.all(12),
              child: TextField(
                // TÍTULO
                decoration: InputDecoration(
                  hintText: "Título",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              // CAIXA TEXTO INPUT TEXTO
              padding: const EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Texto",
                  border: OutlineInputBorder(),
                ),
                maxLines: null,
              ),
            ),
            Container(
              // TEXTO: Imagem e botão "+"
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Imagem",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      // Lógica Aqui
                    },
                    child: const Icon(
                      Icons.add,
                      size: 24,
                      color: Colors.black, // Cor do ícone
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              height: 1,
              color: Colors.black, // Cor da linha
            ),
            Container(
              margin: const EdgeInsets.only(left: 12, top: 10),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, // Cor da borda
                  width: 1, // Largura da borda
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.image, // Ícone padrão de imagem
                  size: 25,
                  color: Colors.black, // Cor do ícone
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
