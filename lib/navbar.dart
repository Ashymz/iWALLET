import 'package:flutter/material.dart';
import 'package:iwallet/pages/home/home.dart';
import 'package:iwallet/pages/onboarding/onboarding1.dart';
import 'utils/media.dart';
// import 'package:geolocator/geolocator.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentTab = 0;
  bool keyboardOpen = false;
  bool hasInternetConnection = true;
  bool hasLocationConnection = true;

  final List screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  @override
  void initState() {
    super.initState();
  }

  // void subscribeToLocationChanges() {
  //   Geolocator.getPositionStream().listen((Position position) {
  //     // Handle location updates here
  //     // You can access the latitude and longitude from the `position` object.
  //     double latitude = position.latitude;
  //     // double longitude = position.longitude;
  //     bool t;
  //     if (latitude != null) {
  //       t = true;
  //     } else {
  //       t = false;
  //     }
  //     setState(() {
  //       hasLocationConnection = t;
  //     });
  //     // Perform any actions you need with the updated location data.
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
      child: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: Scaffold(
            backgroundColor: Colors.blueAccent,
            body: PageStorage(bucket: bucket, child: currentScreen),

            // floatingActionButton: FloatingActionButton(
            //   backgroundColor: Colors.blueAccent,
            //   child: Image.asset(
            //     "images/scan1.png",
            //     height: height / 30,
            //   ),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const Scan(),
            //       ),
            //     );
            //   },
            // ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
            resizeToAvoidBottomInset: false,
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      blurRadius: 25.0,
                      offset: const Offset(0.0, 0.95),
                    ),
                  ],
                ),
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width / 30,
                        ),
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(
                              () {
                                currentScreen = const HomeScreen();
                                currentTab = 0;
                              },
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              currentTab == 0
                                  ? Image.asset(
                                      "images/home-variant.png",
                                      height: 34,
                                      color: Color(0xff015cd9),
                                    )
                                  : Image.asset(
                                      "images/home-variant.png",
                                      height: 33,
                                      color: Color(0xffb4b4b4),
                                    ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width / 20,
                        ),
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(
                              () {
                                // currentScreen = const Analytics();
                                currentTab = 1;
                              },
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              currentTab == 1
                                  ? Image.asset(
                                      "images/trophy-variant.png",
                                      height: 34,
                                      color: Color(0xff015cd9),
                                    )
                                  : Image.asset(
                                      "images/trophy-variant.png",
                                      height: 33,
                                      color: Color(0xffb4b4b4),
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(
                              () {
                                currentScreen = const HomeScreen();
                                currentTab = 2;
                              },
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              currentTab == 2
                                  ? Image.asset(
                                      "images/cash-img.png",
                                      height: 34,
                                      color: Color(0xff015cd9),
                                    )
                                  : Image.asset(
                                      "images/cash-img.png",
                                      height: 33,
                                      color: Color(0xffb4b4b4),
                                    ),
                            ],
                          ),
                        ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(
                              () {
                                // currentScreen = const AccountWallet();
                                currentTab = 3;
                              },
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              currentTab == 3
                                  ? Image.asset(
                                      "images/credit-card.png",
                                      height: 34,
                                      color: Color(0xff015cd9),
                                    )
                                  : Image.asset(
                                      "images/credit-card.png",
                                      height: 33,
                                      color: Color(0xffb4b4b4),
                                    ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width / 20,
                        ),
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(
                              () {
                                // currentScreen = const Profile();
                                currentTab = 4;
                              },
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              currentTab == 4
                                  ? Image.asset(
                                      "images/bot-img.png",
                                      height: 34,
                                      color: Color(0xff015cd9),
                                    )
                                  : Image.asset(
                                      "images/bot-img.png",
                                      height: 33,
                                      color: Color(0xffb4b4b4),
                                    ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width / 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
