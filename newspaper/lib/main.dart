import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newspaper/firebase_options.dart';
import 'package:newspaper/screen/Login_page.dart';
import 'package:newspaper/screen/catagory_page.dart';
import 'package:newspaper/screen/homepage.dart';
import 'package:newspaper/screen/news_bottom_nav.dart';
import 'package:newspaper/screen/search_page.dart';
import 'package:newspaper/screen/setting_page.dart';
import 'package:newspaper/screen/signup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignUpPage(),
    );
  }
}
