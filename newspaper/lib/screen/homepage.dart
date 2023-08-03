import 'package:flutter/material.dart';
import 'package:newspaper/Widgts/container.dart';
import 'package:newspaper/Widgts/listview.dart';
import 'package:newspaper/Widgts/news_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewsAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BreakingNewsCon(),
            Divider(
                color: Colors.black.withOpacity(0.1),
                indent: 16,
                endIndent: 16),
            NewsListView(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: OrdinaryNewsCon(
                image: 'fload2.png',
                newsTag: 'National',
                headline: 'The flood victims spend their days without food',
                subHeadline:
                    'The overall flood situation in the country has further deteriorated. All rivers in the north are rising.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: OrdinaryNewsCon(
                image: 'edu.png',
                newsTag: 'Education',
                headline:
                    'If you want to study in China, it is good to know the answers to the 10 questions',
                subHeadline:
                    'China is now a favorite destination for many students for higher education. About studying in China.',
              ),
            ),
            SpotlightNewsListView(),
            NewsListView2(),
            VideoListView()
          ],
        ),
      ),
    );
  }
}
