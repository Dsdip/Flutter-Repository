import 'package:flutter/material.dart';
import 'package:newspaper/Widgts/container.dart';
import 'package:newspaper/Widgts/listview.dart';
import 'package:newspaper/Widgts/news_appbar.dart';

class CategoryPage2 extends StatelessWidget {
  const CategoryPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewsAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [BreakingNewsCon(), NewsListView()],
        ),
      ),
    );
  }
}
