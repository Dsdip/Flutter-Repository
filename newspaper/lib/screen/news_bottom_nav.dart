import 'package:flutter/material.dart';
import 'package:newspaper/screen/catagory_page.dart';
import 'package:newspaper/screen/search_page.dart';
import 'package:newspaper/screen/setting_page.dart';

import 'homepage.dart';

class NewsBottomNav extends StatefulWidget {
  const NewsBottomNav({super.key});

  @override
  State<NewsBottomNav> createState() => _NewsBottomNavState();
}

class _NewsBottomNavState extends State<NewsBottomNav> {
  var pages = [HomePage(), CategoryPage(), SearchPage(), SettingsPage()];
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(page),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        iconSize: 25,
        elevation: 20,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xFFF1582C),
        unselectedItemColor: Color(0xFF494949),
        onTap: (int value) {
          setState(() {
            page = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
