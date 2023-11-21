import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C2828),
        elevation: 0,
        title: const Text("Nome App", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        leading: Icon(
          Icons.arrow_back,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0), // Add padding around the button
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              child: Text(
                "Criar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
          )
        ],
      ),
    );
  }
}

