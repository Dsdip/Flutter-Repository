import 'package:flutter/material.dart';
import 'package:newspaper/Widgts/news_appbar.dart';
import 'package:newspaper/variable/variables.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NewsAppBar(),
        body: ListView.builder(
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return Container(
                width: 358,
                height: 60,
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                decoration: ShapeDecoration(
                    color: Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: Center(
                    child: Text(categoryList[index],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400))),
              );
            }));
  }
}
