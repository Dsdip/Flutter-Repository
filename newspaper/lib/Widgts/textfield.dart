import 'package:flutter/material.dart';
import 'package:newspaper/Widgts/images.dart';

class AuthTextField extends StatelessWidget {
  AuthTextField(
      {super.key,
      required this.title,
      this.hint = '',
      this.obscure = false,
      this.textInputType = TextInputType.text});

  String title;
  String hint;
  bool obscure;
  TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 16)),
          SizedBox(height: 5),
          TextField(
            style: TextStyle(fontSize: 20, color: Colors.black),
            obscureText: obscure,
            obscuringCharacter: '*',
            keyboardType: textInputType,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: hint,
                hintStyle: TextStyle(fontSize: 18),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Color(0xFFD9D9D9)),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.purple),
                ),
                suffixIcon: Icon(Icons.help_outline)),
          ),
        ],
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  SearchTextField(
      {super.key, required this.hint, this.textInputType = TextInputType.text});

  String hint;
  TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 13, color: Colors.black),
      keyboardType: textInputType,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: Color(0xFF494949)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blue),
          ),
          suffixIcon: Logo(name: 'search_logo.png', scale: 1.5)),
    );
  }
}
