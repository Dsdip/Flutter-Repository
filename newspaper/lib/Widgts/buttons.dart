import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  SimpleButton(
      {super.key, required this.title, this.image = '', this.scale = 0.1});

  String title;
  String image;
  double scale;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 330,
        height: 42,
        decoration: ShapeDecoration(
            color: Color(0xFFF1582C),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        child: image == ''
            ? Center(
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(image, scale: scale),
                  SizedBox(width: 5),
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          width: 330,
          height: 43,
          decoration: ShapeDecoration(
              color: Color(0xFF4285F4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              shadows: [
                BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 2,
                    offset: Offset(2, 2),
                    spreadRadius: 0)
              ]),
          child: ButtonElements(
              title: 'Sign Up with Google',
              logo: 'assets/images/google_logo.png',
              logoScale: 2)),
    );
  }
}

class FacebookButton extends StatelessWidget {
  const FacebookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          width: 330,
          height: 43,
          decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(1, 0),
                end: Alignment(0, -1),
                colors: [Color(0xFF046BE3), Color(0xFF18A9FD)],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: ButtonElements(
              title: 'Sign Up with Facebook',
              logo: 'assets/images/facebook_logo.png',
              logoScale: 3.5)),
    );
  }
}

class ButtonElements extends StatelessWidget {
  ButtonElements(
      {super.key,
      required this.title,
      required this.logo,
      required this.logoScale});

  String title;
  String logo;
  double logoScale;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 43,
          height: 41,
          margin: EdgeInsets.all(2),
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4))),
          child: Image.asset(logo, scale: logoScale),
        ),
        SizedBox(width: 59),
        Text(title,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500))
      ],
    );
  }
}
