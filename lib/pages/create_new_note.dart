import 'package:flutter/material.dart';

class CreateNote extends StatelessWidget {
  const CreateNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //APP BAR
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
          Padding(
            padding:
                const EdgeInsets.all(10.0), // Add padding around the button
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              onPressed: () {},
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Text(
                "Salvar",
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
            margin: const EdgeInsets.only(top: 2),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Título",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container( // CAIXA TEXTO INPUT TITULO
            padding: const EdgeInsets.all(12),
            // margin: EdgeInsets.only(top: 5),
            child: TextField(
              decoration: InputDecoration(
                //hintText: "Título",
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
