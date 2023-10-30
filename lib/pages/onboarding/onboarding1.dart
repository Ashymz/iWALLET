import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iwallet/pages/onboarding/start_page.dart';
import 'package:iwallet/utils/media.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  List<String> imageList = [
    'images/onboard1.png',
    'images/onboard2.png',
    'images/onboard3.png',
    'images/onboard4.png',
    'images/onboard5.png',
  ];
  List<String> textList = [
    'Looking for simple and fun way to manage your finances. Managing our money has never been this easy! Our wallet app is simple & intuitive, Keep track of your expenses, make payments,get loans and even cashback rewards,all in one place!',
    'Dispute management on Alternate Channels leveraging Artificial Intelligence & Machine Learninng',
    'Personalized user experience based on customer feedback with chatbots for instant customer support',
    'Our Agent Geo-Location services help users find nearby agents for more complex problems and assistance to help us serve you better',
    'Peer to peer lending services gives you access to short term loans. Borrow and Lend money with ease today',
  ];
  final CarouselController _carouselController = CarouselController();

  final backgroundColor = 'images/background.png';
  int currentIndex = 0;

  Widget indicator(bool isActive) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
      child: AnimatedContainer(
        duration: const Duration(microseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 3.0),
        height: 20.0,
        width: isActive ? 20.0 : 20.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: isActive
                ? const AssetImage("images/darkstar.png")
                : const AssetImage("images/star.png"),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
      child: WillPopScope(
        onWillPop: () async => false, // Disable the back button
        child: Scaffold(
          body: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            // color: Colors
            //     .blueAccent, // You can adjust the initial background color here
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'images/background.png'), // Specify the correct path
                  fit: BoxFit.cover, // You can adjust the fit as needed
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height / 10,
                  ),
                  Container(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.map((imageUrl) {
                        int index = imageList.indexOf(imageUrl);
                        return Container(
                          width: 10.0,
                          height: 15.0,
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == index
                                ? Colors.white
                                : Colors.grey,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: height / 12,
                  ),
                  Container(
                    height: height / 2.03,
                    child: CarouselSlider(
                      carouselController: _carouselController,
                      items: imageList.asMap().entries.map((entry) {
                        int index = entry.key;
                        String imageUrl = entry.value;
                        String text = textList[
                            index]; // Assuming you have an array called textList with corresponding texts

                        return Column(children: [
                          Image.asset(
                            imageUrl,
                            width: 310,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top:
                                      3.9), // Adjust the bottom padding as desired
                              child: Text(
                                text,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontFamily: 'Gilroy Medium'),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                        ]);
                      }).toList(),
                      options: CarouselOptions(
                        height: height,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (currentIndex != imageList.length - 1)
                          GestureDetector(
                            onTap: () {
                              const StartPage();
                            },
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilroy Medium',
                                fontSize: 19,
                              ),
                            ),
                          )
                        else
                          Center(
                            child: Container(
                              // height: height / 17,
                              width: width / 1.19,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.to(const StartPage());
                                  // Start action here
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors
                                          .white), // Set the background color to white
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          16.0), // Adjust the border radius as needed
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Start',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontFamily: 'Gilroy Medium',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        if (currentIndex != imageList.length - 1)
                          ElevatedButton(
                            onPressed: () {
                              _carouselController.nextPage();
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontFamily: 'Gilroy Medium',
                                fontSize: 18,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors
                                      .white), // Set the background color to white
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      16.0), // Adjust the border radius as needed
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
