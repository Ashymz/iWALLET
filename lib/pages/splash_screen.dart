import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iwallet/pages/onboarding/onboarding1.dart';
import 'package:iwallet/utils/media.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Get.to(const OnBoarding1());
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
      child: Scaffold(
        // backgroundColor: Colors.blueAccent,
        body: Center(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    color: Colors.transparent,
                    height: height,
                    width: width,
                    child: Image.asset(
                      "images/background.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Opacity(
                    opacity: _opacity,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset(0, 3),
                        end: Offset(0, 0),
                      ).animate(
                        CurvedAnimation(
                          parent: AlwaysStoppedAnimation(1),
                          curve: Curves.bounceIn,
                        ),
                      ),
                      child: Image.asset(
                        'images/image 1.png',
                        width: 200,
                        height: 200,
                      ),
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
