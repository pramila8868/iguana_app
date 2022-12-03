import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iguana_app/pages/model/page/allpage/homepage.dart';

import 'naviagation/btmnavigationbar.dart';

class SpashScreen extends StatefulWidget {
  @override
  _SpashScreenState createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  late Animation<Offset> _animation2;
  late Animation<double> _animation3;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();
    _animation = Tween<Offset>(
      begin: const Offset(-1, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInCubic,
    ));
    _animation2 = Tween<Offset>(
      begin: const Offset(1, 0.0),
      end: const Offset(-0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInCubic,
    ));
    _animation3 = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Builder(
            builder: (context) => Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Color(0xffE9003F),
                ),
                child: SingleChildScrollView(
                    child: Stack(children: [
                  Positioned(
                      child: Container(
                          height: 150,
                          alignment: Alignment.topCenter,
                          child: Opacity(
                              opacity: 0.2,
                              child: Image.asset(
                                  'assets/images/logo-final.png')))),
                  Positioned(
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 200.0),
                              child: Text(
                                "Delicious taste",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 31,
                                    fontFamily: 'Yellowtail'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SlideTransition(
                                position: _animation,
                                transformHitTests: true,
                                textDirection: TextDirection.ltr,
                                child: Image.asset(
                                    'assets/images/h1-yellow-border-top.png'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FadeTransition(
                                opacity: _animation3,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/h1-white-M.png',
                                      width: Get.width * (0.1),
                                      height: Get.width * (0.1),
                                    ),
                                    Image.asset(
                                      'assets/images/h1-white-E.png',
                                      width: Get.width * (0.1),
                                      height: Get.width * (0.1),
                                    ),
                                    Image.asset(
                                      'assets/images/h1-white-X.png',
                                      width: Get.width * (0.1),
                                      height: Get.width * (0.1),
                                    ),
                                    Image.asset(
                                      'assets/images/h1-white-I.png',
                                      width: Get.width * (0.1),
                                      height: Get.width * (0.1),
                                    ),
                                    Image.asset(
                                      'assets/images/h1-white-C.png',
                                      width: Get.width * (0.1),
                                      height: Get.width * (0.1),
                                    ),
                                    Image.asset(
                                      'assets/images/h1-white-A.png',
                                      width: Get.width * (0.1),
                                      height: Get.width * (0.1),
                                    ),
                                    Image.asset(
                                      'assets/images/h1-white-N.png',
                                      width: Get.width * (0.1),
                                      height: Get.width * (0.1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: SlideTransition(
                                position: _animation2,
                                transformHitTests: true,
                                textDirection: TextDirection.ltr,
                                child: Image.asset(
                                    'assets/images/h1-yellow-border-bottom.png'),
                              ),
                            ),

                            // ignore: prefer_const_constructors
                            const Padding(
                              padding: EdgeInsets.only(bottom: 50.0),
                              child: Text(
                                "Fast Food Restaurant",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'AmaticSc'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(26.0),
                              child: Row(children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.065,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: MaterialButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => const Description()));
                                      // Get.to(const Product());
                                      // Get.to(const SearchProd());
                                      Get.to(const BtmNavigationBar());

                                      //   Get.to(const HomePage());
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    color: Colors.white,
                                    child: const Text(
                                      "Search",
                                    ),
                                  ),
                                ),
                                //  ),
                                // ),
                              ]),
                            ),

                            // Positioned(
                            //   //  bottom: 290,
                            //   left: 90,
                            //   child: Row(
                            //     //crossAxisAlignment: CrossAxisAlignment.center,
                            //     children: const [
                            //       Padding(
                            //         padding: EdgeInsets.all(8.0),
                            //         child: Text(
                            //           "FAST",
                            //           style: TextStyle(
                            //               color: Colors.white,
                            //               fontFamily: "AmaticSc",
                            //               fontSize: 31),
                            //           //textAlign: TextAlign.center,
                            //         ),
                            //       ),
                            //       Text(
                            //         "FOOD",
                            //         style: TextStyle(
                            //             color: Colors.white,
                            //             fontFamily: "AmaticSc",
                            //             fontSize: 31),
                            //         textAlign: TextAlign.center,
                            //       ),
                            //       SizedBox(
                            //         width: 10,
                            //       ),
                            //       Text(
                            //         "RESTURANT",
                            //         style: TextStyle(
                            //             color: Colors.white,
                            //             fontFamily: "AmaticSc",
                            //             fontSize: 31),
                            //         textAlign: TextAlign.center,
                            //       ),
                            //     ],
                            //   ),
                            // ),

                            // const Padding(
                            //   padding: EdgeInsets.only(bottom: 70.0),
                            //   child: Text(
                            //     "Fast Food Restaurant",
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontSize: 31,
                            //         fontWeight: FontWeight.bold,
                            //         fontFamily: 'Amatic'),
                            //   ),
                            // ),
                            // Padding(
                            //   padding: const EdgeInsets.only(
                            //       left: 8.0,
                            //       right: 8.0,
                            //       top: 50.0,
                            //       bottom: 50.0),
                            //   child: SlideTransition(
                            //     position: _animation,
                            //     transformHitTests: true,
                            //     textDirection: TextDirection.ltr,
                            //     child: GestureDetector(
                            //         onTap: () => {Get.to(HomePage())},
                            //         //   {Get.offAllNamed(const HomePage())},
                            //         child: Container(
                            //           height: 60,
                            //           width: 350,
                            //           decoration: BoxDecoration(
                            //               color: Colors.white,
                            //               borderRadius:
                            //                   BorderRadius.circular(25.0)),
                            //           child: Padding(
                            //             padding: const EdgeInsets.only(
                            //                 left: 60.0,
                            //                 right: 20.0,
                            //                 top: 10.0,
                            //                 bottom: 10.0),
                            //             child: Align(
                            //                 alignment: Alignment.centerLeft,
                            //                 child: Row(children: [
                            //                   const Text("Get Started",
                            //                       style: TextStyle(
                            //                           fontSize: 25,
                            //                           fontWeight:
                            //                               FontWeight.bold,
                            //                           fontFamily:
                            //                               'MontSerrat')),
                            //                   Padding(
                            //                     padding:
                            //                         const EdgeInsets.only(
                            //                             left: 80.0),
                            //                     child: Image.asset(
                            //                         "assets/images/Group 1.png"),
                            //                   )
                            //                 ])),
                            //           ),
                            //         )),
                            //   ),
                            // )
                          ]),
                    ),
                  )
                ])))));
  }
}
