import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:newspaper/Widgts/textfield.dart';
import 'package:newspaper/Widgts/texts.dart';
import 'package:newspaper/screen/OTP_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController phoneController = TextEditingController();
  static String verify = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
                child:
                    Image.asset('assets/images/dhakaLive_logo.png', scale: 2)),
          ),
          Expanded(
              flex: 4,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text('Phone Number', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 5),
                        TextField(
                          controller: phoneController,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              hintText: '01700000000',
                              hintStyle: TextStyle(fontSize: 18),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Color(0xFFD9D9D9)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.purple),
                              ),
                              suffixIcon: Icon(Icons.help_outline)),
                        ),
                      ],
                    ),
                  ),

                  // AuthTextField(
                  //     title: 'Phone Number',
                  //     hint: '+88 (017) 00000000',
                  //     textInputType: TextInputType.phone),
                  AuthTextField(title: 'Password', hint: '', obscure: true),
                  SizedBox(height: 20),

                  InkWell(
                    onTap: () async {
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: '+88${phoneController.text}',
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          LoginPage.verify = verificationId;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OTPPage()));
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    },
                    child: Container(
                        width: 330,
                        height: 42,
                        decoration: ShapeDecoration(
                            color: Color(0xFFF1582C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        )),
                  ),

                  //SimpleButton(title: 'Login'),
                  SizedBox(height: 20),
                  ClickableText(
                      normText: 'Forgot Password? ',
                      clickText: 'Set New Password'),
                  SizedBox(height: 140),
                  ClickableText(
                      normText: "Don't have a Account? ",
                      clickText: 'Create New Account'),
                ],
              )),
        ],
      ),
    );
  }
}
