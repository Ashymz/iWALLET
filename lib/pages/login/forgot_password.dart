import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iwallet/pages/login/login.dart';
import 'package:iwallet/pages/login/recover_password.dart';
import 'package:iwallet/utils/media.dart';
import 'package:pinput/pinput.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  dynamic mycolor = Color(0xFF0167F6);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
        child: WillPopScope(
            onWillPop: () async {
              return true;
            },
            child: Scaffold(
                // backgroundColor: ,
                body: SingleChildScrollView(
                    // physics: const NeverScrollableScrollPhysics(),
                    child: Column(children: [
              Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 220,
                  width: width,
                  child: Image.asset(
                    "images/background.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Column(children: [
                  SizedBox(
                    height: height / 15,
                  ),
                  Row(
                    children: [
                      SizedBox(width: width / 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height / 45),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 35, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Recover \nPassword',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilroy Medium',
                              fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height / 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Enter OTP',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Gilroy Medium',
                              fontSize: 19),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: verifyPinPut(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Check your email for six digit code',
                          style: TextStyle(
                              color: mycolor,
                              fontFamily: 'Gilroy Medium',
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      width: width,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const RecoverPassword_Email());
                        },
                        child: Text(
                          'Verify',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Gilroy Medium',
                            fontSize: 18,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(
                              0xFF0167F6)), // Set the background color to white
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the border radius as needed
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Re-send OTP',
                            style: TextStyle(
                                color: mycolor,
                                fontFamily: 'Gilroy Medium',
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ])
              ])
            ])))));
  }

  Widget verifyPinPut() {
    final defaultPintheme = PinTheme(
      width: 56,
      height: 50,
      textStyle: TextStyle(fontSize: 17, color: Colors.black),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: mycolor), // Default border color
      ),
    );

    return Container(
      child: Pinput(
        // obscureText: true,
        //  obscuringCharacter: '*',
        // controller: ,
        length: 6,
        defaultPinTheme: defaultPintheme,
        submittedPinTheme: defaultPintheme.copyWith(
          decoration: defaultPintheme.decoration!
              .copyWith(border: Border.all(color: mycolor)),
        ),
        focusedPinTheme: defaultPintheme.copyWith(
          decoration: defaultPintheme.decoration!
              .copyWith(border: Border.all(color: mycolor)),
        ),
        onCompleted: (pin) => debugPrint(pin),
      ),
    );
  }
}
