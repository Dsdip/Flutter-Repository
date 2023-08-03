import 'package:flutter/material.dart';

class NewsTags extends StatelessWidget {
  NewsTags({super.key, required this.tagName, this.textColor = 0xFF494949});

  String tagName;
  dynamic textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * tagName.length * 0.021,
      height: 17,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: ShapeDecoration(
          color: tagName == 'Breaking News'
              ? Color(0x19F1582C)
              : textColor == 0xFFFFFFFF
                  ? Colors.white.withOpacity(0.1)
                  : Color(0x19494949),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Text(tagName,
          style: TextStyle(
              fontSize: 9,
              color: Color(textColor),
              fontWeight: FontWeight.w400)),
    );
  }
}
