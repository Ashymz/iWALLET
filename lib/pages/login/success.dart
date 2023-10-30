import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iwallet/pages/onboarding/onboarding1.dart';
import 'package:iwallet/utils/heartbeat.dart';
import 'package:iwallet/utils/media.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
   dynamic mycolor = Color(0xFF0167F6);

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // Container(
                  //   color: Colors.white,
                  //   height: height,
                  //   width: width,
                  //   child: Image.asset(
                  //     "images/check-circle.png",
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  Center(
                    child: Center(
                      child: Image.asset(
                        'images/check-circle.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                  SizedBox(
                    height:20,
                  ),
                  Center(
                    child: Center(
                      child: Text('Done', style:TextStyle(
                        color: mycolor,
                        fontFamily: 'Gilroy Medium',
                        fontSize: 20,
                      ))
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
