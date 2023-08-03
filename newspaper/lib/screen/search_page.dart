import 'package:flutter/material.dart';
import 'package:newspaper/Widgts/listview.dart';
import 'package:newspaper/Widgts/textfield.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF494949),
        toolbarHeight: 94,
        title: SearchTextField(hint: 'Sports'),
      ),
      body: NewsListView(),
    );
  }
}
