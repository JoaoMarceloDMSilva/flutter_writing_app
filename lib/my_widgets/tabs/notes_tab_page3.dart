import 'package:flutter/material.dart';
import 'package:flutter_writing_app/my_widgets/tab_bar_add.dart';
import 'package:flutter_writing_app/routes/other_class_routes.dart';

// import '../routes/other_class_routes.dart';

class NotesTabPage3 extends StatefulWidget {
  final String chapterTitle;

  const NotesTabPage3({Key? key, required this.chapterTitle}) : super(key: key);

  @override
  _NotesTabPage3State createState() => _NotesTabPage3State();
}

class _NotesTabPage3State extends State<NotesTabPage3> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryAdd(
            myTitle: widget.chapterTitle,
            
            tap: () => Navigator.pushNamed(context, Routes.createNote),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            padding: const EdgeInsets.all(12),
            color: Colors.grey[300], // Cor cinza
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Nome Nota",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        isExpanded
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                      ),
                      onPressed: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                    ),
                  ],
                ),
                AnimatedCrossFade(
                  duration: Duration(milliseconds: 300),
                  crossFadeState: isExpanded
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  firstChild: const Text(
                    "Faça um teste, clique no botão ao lado do título da nota para ver se ele recolhe todo esse texto aqui.",
                    style: TextStyle(fontSize: 16),
                  ),
                  secondChild: Container(),
                ),
              ],
            ),
          ),
          // Adicione outros widgets ou estruturas conforme necessário
        ],
      ),
    );
  }
}
