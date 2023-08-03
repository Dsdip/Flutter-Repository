import 'package:flutter/material.dart';
import 'package:newspaper/Widgts/buttons.dart';
import 'package:newspaper/Widgts/images.dart';
import 'package:newspaper/Widgts/news_appbar.dart';
import 'package:newspaper/variable/variables.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewsAppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 33, left: 22),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/person_logo.png'),
                        ),
                        Positioned(
                          bottom: 1,
                          right: 1,
                          child: CircleAvatar(
                              radius: 9,
                              child: Logo(name: 'camera_logo.png', scale: 1.8)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 13),
                  Container(
                    width: 114,
                    height: 42,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Saqib Sizan',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500)),
                        Text('01700000000',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w300))
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 77,
                  height: 34,
                  margin: EdgeInsets.only(right: 16),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.25, color: Color(0xFF494949)),
                          borderRadius: BorderRadius.circular(8))),
                  child: Row(
                    children: [
                      Logo(name: 'edit_logo.png'),
                      SizedBox(width: 8),
                      Text('Edit',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400))
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 34),
          ListView.separated(
            itemCount: settingsOptions.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      settingsOptions[index],
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF494949)),
                    ),
                    Logo(name: 'arrow_right_logo.png', scale: 1.5)
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Colors.black.withOpacity(0.1)),
          ),
          SizedBox(height: 30),
          SimpleButton(
              title: 'Logout',
              image: 'assets/images/logoout_logo.png',
              scale: 1.5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 32),
            child: Row(
              children: [
                Logo(name: 'facebook_logo.png', scale: 3),
                SizedBox(width: 10),
                Logo(name: 'telegram_logo.png', scale: 1.5),
                SizedBox(width: 10),
                Logo(name: 'twitter_logo.png', scale: 1.5),
                SizedBox(width: 10),
                Logo(name: 'linkedin_logo.png', scale: 1.5),
                SizedBox(width: 10),
                Logo(name: 'instagram_logo.png', scale: 1.5),
              ],
            ),
          )
        ],
      ),
    );
  }
}
