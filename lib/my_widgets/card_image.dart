import 'package:flutter/material.dart';
import 'package:flutter_writing_app/cosntants/images.dart';
import 'package:flutter_writing_app/cosntants/texto_descricao.dart';
import 'package:flutter_writing_app/cosntants/texto_titulo.dart';
import 'package:flutter_writing_app/routes/other_class_routes.dart';

class CardImage extends StatelessWidget {
  final tap;
  final String title;
  const CardImage({Key? key, this.tap, required this.title});

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => Navigator.pushNamed(context, Routes.mainPage),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Color(0xff9F9F9F),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Images(
                imageName: "alba_umbra",
                heightImage: 100,
                widthImage: 100,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 230,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextTitulo(titulo: title),
                    TextDescricao(
                      descricao:
                          "Descrição...",
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
