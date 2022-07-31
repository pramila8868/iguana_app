// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iguana_app/pages/model/page/allpage/homepage.dart';
import 'package:iguana_app/pages/model/page/allpage/searchproduct.dart';
import 'package:iguana_app/pages/naviagation/btmnavigationbar.dart';
import 'package:sizer/sizer.dart';

import '../../../naviagation/bottomnavigation.dart';
import 'description.dart';
import 'product.dart';

// ignore: must_be_immutable
class BackGroundPage extends StatelessWidget {
  //AnimationController controller;
  // AnimationController animationController;

  const BackGroundPage({
    Key? key,
  }) : super(key: key);

// class _BackGroundPageState extends State<BackGroundPage>
//     with TickerProviderStateMixin {
//   //SingleTickerProviderStateMixin

//   late AnimationController _animationcontroller;
//   late AnimationController _animationcontroller1;
//   late AnimationController _animationcontroller2;
//   late Animation<Offset> _animation;
//   late Animation<Offset> _animation1;
//   late Animation<double> _animation2;

//   @override
//   void initState() {
//     super.initState();
//     _animationcontroller = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..forward();
//     _animation = Tween<Offset>(
//       begin: const Offset(-0.5, 0.0),
//       end: const Offset(0.5, 0.0),
//     ).animate(CurvedAnimation(
//       parent: _animationcontroller,
//       curve: Curves.easeInCubic,
//     ));

//     _animationcontroller1 = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..forward();
//     _animation1 = Tween<Offset>(
//       begin: const Offset(-0.5, 0.0),
//       end: const Offset(0.5, 0.0),
//     ).animate(CurvedAnimation(
//       parent: _animationcontroller,
//       curve: Curves.easeInCubic,
//     ));

//     _animationcontroller2 = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..repeat(reverse: true);
//     _animation2 =
//         CurvedAnimation(parent: _animationcontroller2, curve: Curves.easeIn);
//   }

//   @override
//   void dispose() {
//     _animationcontroller.dispose();
//     _animationcontroller1.dispose();
//     _animationcontroller2.dispose();
//     super.dispose();
//   }

  // ignore: unused_element
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: const Color(0xffE9003F),
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // crossAxisAlignment:CrossAxisAlignment.center
          Positioned(
            top: 30,
            right: 90,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/images/logo-final.png',
                ),
              ),
            ),
          ),

          // Container(
          //   child: Row(
          //     children: const [Text("Delicious"), Text("Taste")],
          //   ),
          // ),

          // ignore: prefer_const_constructors
          Positioned(
            top: 305,
            //child: const AnimationPage(),
            //left: 0,
            // child: SlideTransition(
            //   position: _animation,
            //     position: Tween<Offset>(
            //   begin: const Offset(-1, 0),
            //       end: Offset.zero,
            //     ).animate(animationController),
            //     // position: //AnimationController(),
            child: Image.asset(
              'assets/images/h1-yellow-border-top.png',
              // width: MediaQuery.of(context).size.width * 0.5
              //  ),
            ),
          ),
          // ignore: prefer_const_constructors

          Positioned(
            bottom: 300,
            //left: 0,

            // child: SlideTransition(position: _animation1,),
            child: Image.asset(
              'assets/images/h1-yellow-border-bottom.png',
              // width: MediaQuery.of(context).size.width * 0.5
            ),
          ),
          //  ),
          // ),
          //  ),
          //  const AnimationPage(),

          Positioned(
              top: 230,
              left: 80,
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Delicious",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Yellowtail",
                          fontSize: 31),
                      //textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    "Taste",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Yellowtail",
                        fontSize: 31),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),

          Center(
            // child: FadeTransition(
            //   opacity: animationController,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  'assets/images/h1-white-M.png',
                  width: MediaQuery.of(context).size.width * 0.15,
                  //height: MediaQuery.of(context).size.height * 0.1
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                'assets/images/h1-white-E.png',
                width: MediaQuery.of(context).size.width * 0.11,
                //  height: MediaQuery.of(context).size.height * 0.11
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset('assets/images/h1-white-X.png',
                  width: MediaQuery.of(context).size.width * 0.13,
                  height: MediaQuery.of(context).size.height * 0.07),
              // const SizedBox(
              //   width: 5,
              // ),
              Image.asset('assets/images/h1-white-I.png',
                  width: MediaQuery.of(context).size.width * 0.09,
                  height: MediaQuery.of(context).size.height * 0.07),
              // const SizedBox(
              //   width: 3,
              // ),
              Image.asset('assets/images/h1-white-C.png',
                  width: MediaQuery.of(context).size.width * 0.13,
                  height: MediaQuery.of(context).size.height * 0.1),
              // const SizedBox(
              //   width: 5,
              // ),
              Image.asset('assets/images/h1-white-A.png',
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.1),
              const SizedBox(
                width: 5,
              ),
              Image.asset('assets/images/h1-white-N.png',
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.1),
            ]),
          ),
          //    ),

          Positioned(
            bottom: 40,
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
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

                    //     icon:const Icon(Icons.forward_10),
                    //Image.asset('assets/images/h1-white-A.png',),

                    //child:Icons.arrow_back

                    //const Icon(Icons.arrow_circle_left)
                  ),

                  //   ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 230,
            left: 90,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "FAST",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "AmaticSc",
                        fontSize: 31),
                    //textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  "FOOD",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "AmaticSc",
                      fontSize: 31),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "RESTURANT",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "AmaticSc",
                      fontSize: 31),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )

          // TextFormField(
          //   keyboardType: TextInputType.name,
          //   decoration: const InputDecoration(
          //       labelText: "Search",
          //       fillColor: Colors.white,
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: BorderSide(
          //           color: Colors.black,
          //         ),
          //         borderRadius: BorderRadius.all(Radius.circular(16.0)),
          //       )),
          // ),

          // Container(
          //   decoration: const Decoration(

          //   ),
          // )
        ],
      ),
    );
  }
}
