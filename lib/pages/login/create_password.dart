import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iwallet/pages/login/login.dart';
import 'package:iwallet/utils/media.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
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
                          'Create \nPassword',
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
                          'Sign up',
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
                          // prefixIcon: Icon(Icons.mail),
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
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Add some spacing between fields
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          // prefixIcon: Icon(Icons.mail),
                          labelText: 'Re-enter Password',
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

                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      width: width,
                      height:40,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const Login());
                        },
                        child: Text(
                          'Save',
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
                ])
              ])
            ])))));
  }
}
