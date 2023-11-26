import 'package:flutter/material.dart';

class ChapterTabContainer extends StatelessWidget {
  final String title;
  final String description;

  const ChapterTabContainer({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff9F9F9F),
        borderRadius: BorderRadius.circular(8),
      ),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width - 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
