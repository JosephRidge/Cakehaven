import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, this.imageType, this.imageSource = ""});
  final int? imageType; // if 1 ==> network image, else local
  final String imageSource; // url 

  @override
  Widget build(BuildContext context) {
    return (imageType == 1)
        ? Image.network(imageSource)
        : Image.asset(imageSource);
  }
}
