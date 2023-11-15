import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/images.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Images(
            imageName: "alba_umbra",
            heightImage: 100,
            largeImage: 100,
          ),
        Text("Qualquer coisa", 
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
        )
        
        ],
      ),
    );
  }
}