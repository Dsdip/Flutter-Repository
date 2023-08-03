import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  Logo({super.key, required this.name, this.scale = 2.5});

  String name;
  double scale;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/$name', scale: scale);
  }
}

DecorationImage wallPaper(String imgName) {
  return DecorationImage(
      image: AssetImage('assets/images/$imgName'), fit: BoxFit.cover);
}

DecorationImage NetWallPaper(String imgName) {
  return DecorationImage(image: NetworkImage(imgName), fit: BoxFit.cover);
}
