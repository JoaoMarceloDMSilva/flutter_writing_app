import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(//APP BAR
        backgroundColor: const Color(0xff2C2828),
        elevation: 0,
        title: const Text("Nome App",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        leading: const Icon(
          Icons.arrow_back,
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.all(10.0), // Add padding around the button
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              onPressed: () {},
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Text(
                "Criar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          
          Container( // PRIMEIRO CONTAINER
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(top: 15),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Criar uma História",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Para  começar, você precisa dar um título à sua obra:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          
          Container( // CAIXA TEXTO INPUT TITULO
            padding: const EdgeInsets.all(12),
            // margin: EdgeInsets.only(top: 5),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Título",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Adicionar Personagens",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "O que é uma história sem personagens? Adicione pelo menos um personagem. Você poderá editá-lo melhor e adicionar mais outros porsteriormente.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal
                  ),
                )
              ],
            )
          ),
          Container( // CAIXA TEXTO INPUT TITULO
            padding: const EdgeInsets.all(12),
            // margin: EdgeInsets.only(top: 5),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Personagem",
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
