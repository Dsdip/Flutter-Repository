import 'package:flutter/material.dart';

class Task_Box extends StatelessWidget {
  Task_Box({super.key, required this.child, this.color = Colors.white24});

  Widget child;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: child);
  }
}
