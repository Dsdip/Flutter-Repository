import 'package:flutter/material.dart';
import 'package:newspaper/Widgts/images.dart';
import 'package:newspaper/Widgts/tags.dart';

class BreakingNewsCon extends StatelessWidget {
  const BreakingNewsCon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(image: wallPaper('padma_bridge.png')),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  NewsTags(tagName: 'Breaking News', textColor: 0xFFF1582C),
                  SizedBox(width: 5),
                  NewsTags(tagName: 'National'),
                ],
              ),
              SizedBox(height: 5),
              Text('Inauguration of the dream Padma Bridge on June 25',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
              SizedBox(height: 3),
              Text(
                  'The dream Padma Bridge will be inaugurated on June 25. Prime Minister Sheikh Hasina will inaugurate the bridge at 10 am today. The dream Padma Bridge will be inaugurated on June 25. Prime Minister at 10 am today',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.justify),
              SizedBox(height: 3),
              Text('10 minutes ago',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF494949))),
            ],
          ),
        ),
      ],
    );
  }
}

class OrdinaryNewsCon extends StatelessWidget {
  OrdinaryNewsCon(
      {super.key,
      required this.image,
      required this.newsTag,
      required this.headline,
      this.subHeadline = ''});

  String image;
  String newsTag;
  String headline;
  String subHeadline;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              decoration: ShapeDecoration(
                  image: wallPaper(image),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            SizedBox(height: 10),
            NewsTags(tagName: newsTag),
            SizedBox(height: 5),
            Text(headline,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
            SizedBox(height: 3),
            Text(subHeadline,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
                textAlign: TextAlign.justify),
            SizedBox(height: 3),
            Text('40 minutes ago',
                style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF494949))),
            Divider(color: Colors.black.withOpacity(0.1)),
          ],
        ),
      ],
    );
  }
}

class SmallNewsCon extends StatelessWidget {
  SmallNewsCon(
      {super.key,
      required this.image,
      required this.tag,
      required this.headline});

  String image;
  String tag;
  String headline;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 130,
          height: 90,
          decoration: ShapeDecoration(
              image: wallPaper(image),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
        ),
        SizedBox(width: 10),
        Container(
          width: 215,
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewsTags(tagName: tag),
              SizedBox(height: 5),
              Text(
                headline,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 5),
              Text('10 minutes ago',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF494949))),
            ],
          ),
        )
      ],
    );
  }
}
