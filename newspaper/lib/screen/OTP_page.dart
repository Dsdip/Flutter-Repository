import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newspaper/screen/homepage.dart';
import 'package:pinput/pinput.dart';
import 'Login_page.dart';

class OTPPage extends StatelessWidget {
  OTPPage({super.key});

  final FirebaseAuth auth = FirebaseAuth.instance;
  var code = "";

  final defaultPinTheme = PinTheme(
    width: 50,
    height: 50,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.2),
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              Text(
                'Phone Verification',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Text('We need to register your phone before getting started !'),
              SizedBox(height: 20),
              Pinput(
                defaultPinTheme: defaultPinTheme,
                length: 6,
                onChanged: (value) {
                  code = value;
                },
                showCursor: true,
              ),
              SizedBox(height: 30),

              InkWell(
                onTap: () async {
                  try {
                    PhoneAuthCredential credential =
                        PhoneAuthProvider.credential(
                            verificationId: LoginPage.verify, smsCode: code);
                    await auth.signInWithCredential(credential);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } catch (e) {
                    print('Wrong OTP');
                  }
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
                        'Verify Phone',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
              ),

              //SimpleButton(title: 'Submit your OTP'),
            ],
          )),
        ],
      ),
    );
  }
}
