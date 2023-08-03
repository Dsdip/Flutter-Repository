import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  ClickableText({super.key, required this.normText, required this.clickText});

  String normText;
  String clickText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(normText,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300)),
        InkWell(
          onTap: () {},
          child: Text(clickText,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFF1582C))),
        ),
      ],
    );
  }
}
