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
          const TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black);
        case "subtitle":
          const TextStyle(
              fontSize: 16, color: Colors.black12, fontWeight: FontWeight.w300);
        default:
          const TextStyle(fontSize: 12, color: Colors.black12);
      }
    }
    return Text(displayText, style: style());
  }
}
