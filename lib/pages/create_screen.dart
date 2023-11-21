import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bora ver se essa merda funciona",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Já estou sem paciência",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
