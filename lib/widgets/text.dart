import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key, required this.displayText, required this.styleVariant});
  final String displayText;
  final String styleVariant; // title, subtitle, normal-text,small-text

  @override
  Widget build(BuildContext context) {
    style() {
      switch (styleVariant) {
        case "title":
          return const TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black);
        case "subtitle":
         return const TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w300);
         case "button":
         return const TextStyle(
              fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold);
        default:
         return  const TextStyle(fontSize: 12, color: Colors.black);
      }
    }
    return Text(displayText, style: style(), textAlign: TextAlign.start,);
  }
}
