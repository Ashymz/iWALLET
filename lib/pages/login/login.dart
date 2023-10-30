import 'package:flutter/material.dart';
import 'package:iwallet/navbar.dart';
import 'package:iwallet/pages/login/create.dart';
import 'package:iwallet/pages/login/forgot_password.dart';
import 'package:iwallet/utils/media.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                          'Welcome \nBack',
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
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Log in',
                          style: TextStyle(
                              color: mycolor,
                              fontFamily: 'Gilroy Light',
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          labelText: 'Email',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: mycolor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: mycolor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(), // Add border all around
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Add some spacing between fields
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: mycolor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: mycolor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(), // Add border all around
                        ),
                        obscureText: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(children: [
                      Container(
                        width: width / 3,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(const Navbar());
                          },
                          child: Text(
                            'Login in',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilroy Medium',
                              fontSize: 18,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color(
                                0xFF0167F6)), // Set the background color to white
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Adjust the border radius as needed
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Get.to(const ForgotPassword());
                        },
                        child: Text('Forgot Password?',
                            style: TextStyle(
                                fontFamily: 'Gilroy Light', fontSize: 18)),
                      )
                    ]),
                  ),
                  SizedBox(height: 10),
                  Container(
                      child: Center(
                    child: Text('-or-',
                        style: TextStyle(
                            fontFamily: 'Gilroy Light', fontSize: 20)),
                  )),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Center the images horizontally
                      children: [
                        Container(
                          child: Image.asset('images/fingerprint.png'),
                        ),
                        SizedBox(width: 50),
                        Container(
                          child: Image.asset('images/face-recognition.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                      child: Center(
                    child: Text('Log in with Biometrics',
                        style: TextStyle(
                            fontFamily: 'Gilroy Light', fontSize: 20)),
                  )),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      Get.to(CreateAccount());
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: Center(
                            child: Text('Create an account ',
                                style: TextStyle(
                                    color: mycolor,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Gilroy Bold',
                                    fontSize: 20)),
                          )),
                          Icon(
                            Icons.arrow_forward,
                            color: mycolor,
                          )
                        ]),
                  ),
                ])
              ])
            ])))));
  }
}
