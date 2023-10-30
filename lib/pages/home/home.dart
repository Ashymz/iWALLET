import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iwallet/utils/media.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _scrollController = ScrollController();
  bool selection = true;

  @override
  void initState() {
    super.initState();
  }

  Future<void> refresh() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  List img = [
    "images/TransactionList.png",
    "images/scheduleTrf.png",
    "images/call2.png",
    "images/Cheque.png",
    "images/LightnBolt.png",
    "images/tvbills.png",
    "images/officer.png",
    "images/managewallet.png",
  ];

  List paymentname = [
    'Airtime',
    'Airtime',
    'Airtime',
    'Airtime',
    'Airtime',
    'Airtime',
    'Airtime',
    'Airtime',
  ];


  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 0.85),
      child: Scaffold(
          backgroundColor: Colors.white,
          body: RefreshIndicator(
              onRefresh: refresh,
              child: Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage(
                      "images/background.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height / 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width / 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/Vector.png",
                                  color: Colors.white,
                                  height: height / 30,
                                ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              'Hi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Gilroy Medium'),
                            ),
                              ],
                            ),
                            SizedBox(
                              height: height / 100,
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                            onTap: () {
                            },
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Image.asset(
                                  "images/bell-outline.png",
                                  color: Colors.white,
                                  height: height / 28,
                                ),
                                Container(
                                          padding: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          constraints: const BoxConstraints(
                                            minWidth: 16,
                                            minHeight: 16,
                                          ),
                                          child: Text(
                                            5.toString(), // Replace with the number of notifications
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                // notifications.isNotEmpty
                                //     ? 
                                // Positioned(
                                //         right: -4,
                                //         top: -3,
                                //         child: )
                                //     : const SizedBox(),
                              ],
                            )),
                        SizedBox(
                          width: width / 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height / 80,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        // physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Column(
                                  children: [
                                    // SizedBox(
                                    //   height: height / 30,
                                    // ),
                                    Center(
                                      child: Container(
                                        height: height / 9,
                                        width: width / 1.0,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: height / 40,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: width / 20),
                                              child: Row(
                                                children: [
                                                  const Text(
                                                    'Total Balance',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13,
                                                        fontFamily:
                                                            'Gilroy Medium'),
                                                  ),
                                                  const Spacer(),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: 
                                                  const Text(
                                                    'Transaction History',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        decorationThickness: 2,
                                                        decorationStyle: TextDecorationStyle.solid,
                                                        decorationColor: Colors.white,
                                                        decoration: TextDecoration.underline,
                                                        fontSize: 13,
                                                        fontFamily:
                                                            'Gilroy Medium'),
                                                  ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                                  padding: EdgeInsets.only(
                                                      left: width / 20, right: width / 20, top: 0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                        children: [
                                                      Container(
                                                        height: height / 20,
                                                        padding: const EdgeInsets.only(right: 10),
                                                        // width: 200,
                                                        color: selection
                                                            ? Colors.transparent
                                                            : Colors
                                                                .transparent,
                                                        child: selection
                                                            ? const Text(
                                                                // '${formatMoney(appProvider.defaultWallet!.approvedBalance)}',
                                                                '30,500',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize: 45,
                                                                    fontFamily:
                                                                        'Gilroy Normal',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              )
                                                            : Padding(padding: const EdgeInsets.only(top: 15),
                                                            child: 
                                                            Text(
                                                                "********",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      height /
                                                                          20,
                                                                  fontFamily:
                                                                      'Gilroy Bold',
                                                                ),
                                                              ),
                                                            )
                                                      ),
                                                      const Text(
                                                    'NGN',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontFamily:
                                                            'Gilroy Medium'),
                                                  ),
                                                        ],
                                                      ),
                                            const Spacer(),
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            selection =
                                                                !selection;
                                                          });
                                                          // setSelec(selection);
                                                        },
                                                        child: selection
                                                            ? Padding(
                                                                padding: EdgeInsets.only(
                                                                    top:
                                                                        height /
                                                                            100),
                                                                child:
                                                                    const Icon(
                                                                  Icons
                                                                      .remove_red_eye_outlined,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              )
                                                            : Padding(
                                                                padding: EdgeInsets.only(
                                                                    top:
                                                                        height /
                                                                            100),
                                                                child:
                                                                    const Icon(
                                                                  Icons
                                                                      .remove_red_eye,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width / 10),
                                        child: Container(
                                          height: height / 7,
                                          width: width,
                                          decoration: const BoxDecoration(
                                            borderRadius:
                                                BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            // boxShadow: <BoxShadow>[
                                            //   BoxShadow(
                                            //     color: Colors.red
                                            //         .withOpacity(0.4),
                                            //     blurRadius: 15.0,
                                            //     offset: const Offset(0.0, 0.75),
                                            //   ),
                                            // ],
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: height / 50,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                        },
                                                        child: Container(
                                                          // height: height / 15,
                                                          // width: width / 7,
                                                          decoration:
                                                              const BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  10),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Image.asset(
                                                              "images/plus-thick.png",
                                                              height:
                                                                  height / 20,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height / 120,
                                                      ),
                                                      Text(
                                                        'Top up',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Gilroy Medium",
                                                            color: Colors.white,
                                                            fontSize:
                                                                height / 55),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                        },
                                                        child: Container(
                                                          // height: height / 15,
                                                          // width: width / 7,
                                                          decoration:
                                                              const BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  10),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Image.asset(
                                                              "images/send-thick.png",
                                                              height:
                                                                  height / 20,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height / 120,
                                                      ),
                                                      Text(
                                                        'Transfer',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Gilroy Medium",
                                                            color: Colors.white,
                                                            fontSize:
                                                                height / 55),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                        },
                                                        child: Container(
                                                          // height: height / 15,
                                                          // width: width / 7,
                                                          decoration:
                                                              const BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  10),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Image.asset(
                                                              "images/withdraw-thick.png",
                                                              height:
                                                                  height / 20,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height / 120,
                                                      ),
                                                      Text(
                                                        'Withdraw',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Gilroy Medium",
                                                            color: Colors.white,
                                                            fontSize:
                                                                height / 55),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   height: 15,
                            // ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.535,
                              width: double.infinity,
                              color: Colors.white,
                              child: Column(
                                children: [
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: Container(
                                          height: height / 3.5,
                                          width: width,
                                          decoration: const BoxDecoration(
                                            borderRadius:
                                                BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            color: Color(0xfff7f7f7),
                                            // boxShadow: <BoxShadow>[
                                            //   BoxShadow(
                                            //     color: Colors.red
                                            //         .withOpacity(0.4),
                                            //     blurRadius: 15.0,
                                            //     offset: const Offset(0.0, 0.75),
                                            //   ),
                                            // ],
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: height / 40,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                        },
                                                        child: Container(
                                                          width: 50,
                                                          height: 50,
                                                          decoration:
                                                              const BoxDecoration(
                                                                color: Color(0xff015cd9),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  60),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Image.asset(
                                                              "images/phone.png",
                                                              height:
                                                                  height / 30,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height / 120,
                                                      ),
                                                      Text(
                                                        'Airtime',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Gilroy Medium",
                                                            color: const Color(0xff000000),
                                                            fontSize:
                                                                height / 53),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                        },
                                                        child: Container(
                                                          width: 50,
                                                          height: 50,
                                                          decoration:
                                                              const BoxDecoration(
                                                                color: Color(0xff015cd9),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  60),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Image.asset(
                                                              "images/data.png",
                                                              height:
                                                                  height / 30,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height / 120,
                                                      ),
                                                      Text(
                                                        'Data',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Gilroy Medium",
                                                            color: const Color(0xff000000),
                                                            fontSize:
                                                                height / 53),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                        },
                                                        child: Container(
                                                          width: 50,
                                                          height: 50,
                                                          decoration:
                                                              const BoxDecoration(
                                                                color: Color(0xff015cd9),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  60),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Image.asset(
                                                              "images/tv.png",
                                                              height:
                                                                  height / 30,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height / 120,
                                                      ),
                                                      Text(
                                                        'TV',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Gilroy Medium",
                                                            color: const Color(0xff000000),
                                                            fontSize:
                                                                height / 53),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                        },
                                                        child: Container(
                                                          width: 50,
                                                          height: 50,
                                                          decoration:
                                                              const BoxDecoration(
                                                                color: Color(0xff015cd9),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  60),
                                                            ),
                                                          ),
                                                          child: const Center(
                                                            child: Icon(
                                                              Icons.electric_bolt_sharp,
                                                              color: Colors.white,
                                                            )
                                                            // Image.asset(
                                                            //   "images/elect.png",
                                                            //   height:
                                                            //       height / 30,
                                                            // ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height / 120,
                                                      ),
                                                      Text(
                                                        'Electricity',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Gilroy Medium",
                                                            color: const Color(0xff000000),
                                                            fontSize:
                                                                height / 53),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height / 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                        },
                                                        child: Container(
                                                          width: 50,
                                                          height: 50,
                                                          decoration:
                                                              const BoxDecoration(
                                                                color: Color(0xff015cd9),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  60),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Image.asset(
                                                              "images/lend.png",
                                                              height:
                                                                  height / 30,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height / 120,
                                                      ),
                                                      Text(
                                                        'Lend',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Gilroy Medium",
                                                            color: const Color(0xff000000),
                                                            fontSize:
                                                                height / 53),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                        },
                                                        child: Container(
                                                          width: 50,
                                                          height: 50,
                                                          decoration:
                                                              const BoxDecoration(
                                                                color: Color(0xff015cd9),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  60),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Image.asset(
                                                              "images/borrow.png",
                                                              height:
                                                                  height / 30,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height / 120,
                                                      ),
                                                      Text(
                                                        'Borrow',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Gilroy Medium",
                                                            color: const Color(0xff000000),
                                                            fontSize:
                                                                height / 53),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                        },
                                                        child: Container(
                                                          width: 50,
                                                          height: 50,
                                                          decoration:
                                                              const BoxDecoration(
                                                                color: Color(0xff015cd9),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  60),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Image.asset(
                                                              "images/refer.png",
                                                              height:
                                                                  height / 30,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height / 120,
                                                      ),
                                                      Text(
                                                        'Refer & Earn',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Gilroy Medium",
                                                            color: const Color(0xff000000),
                                                            fontSize:
                                                                height / 53),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                        },
                                                        child: Container(
                                                          width: 50,
                                                          height: 50,
                                                          decoration:
                                                              const BoxDecoration(
                                                                color: Color(0xff015cd9),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  60),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Image.asset(
                                                              "images/locat.png",
                                                              height:
                                                                  height / 30,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height / 120,
                                                      ),
                                                      Text(
                                                        'Agent',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Gilroy Medium",
                                                            color: const Color(0xff000000),
                                                            fontSize:
                                                                height / 53),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
              )),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
