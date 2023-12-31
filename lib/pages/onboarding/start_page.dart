import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iwallet/navbar.dart';
import 'package:iwallet/pages/home/home.dart';
import 'package:iwallet/pages/login/create.dart';
import 'package:iwallet/pages/login/login.dart';
import 'package:iwallet/utils/media.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: height / 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Image.asset(
                      'images/image-1.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In non condimentum justo.',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
                ),
                SizedBox(height: 10),
                Container(
                  width: 310,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(Login());
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 310,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const CreateAccount());
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(0, 255, 255, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.white, // Set the border color
                            // width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(19.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
