import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/card_image.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(
              "Nome App",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            CardImage()
          ],
        ),
      ),
    );
  }
}
