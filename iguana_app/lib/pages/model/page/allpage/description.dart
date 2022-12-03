import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iguana_app/Shoppingcontroller/shoppingcard_controller.dart';
//import 'package:iguana_app/pages/model/listmodel.dart';
import 'package:iguana_app/pages/model/page/allpage/background_page.dart';
import 'package:iguana_app/pages/model/page/allpage/cartpage.dart';
import 'package:sizer/sizer.dart';

//import 'product.dart';
//import 'package:iguana_app/pages/listitem.dart';

//import 'naviagation/bottomnavigation.dart';

class Description extends StatelessWidget {
  Description({Key? key}) : super(key: key);
  final ShoppingCartController c = Get.put(ShoppingCartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      // ignore: sized_box_for_whitespace
      Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.096.h,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                //color: Colors.white,
                image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/periperi_cat.png',
              ),
            )),
            //  height: MediaQuery.of(context).size.height * 0.65,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: InkWell(
              onTap: (() {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BackGroundPage()));
                // Get.to(const Description());
              }),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.13,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(11.0),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.grey, //Color(0x29060000),
                      // offset: Offset(3, 6),
                      //  offset: Offset(3, 6),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/Group 13.png',
                  // height: MediaQuery.of(context).size.height * 0.06,
                  //  width: MediaQuery.of(context).size.width * 0.13,
                ),
              ),
            ),
          ),
        ],
      ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Peri Peri Chicken",
            style: TextStyle(fontSize: 26, fontFamily: "Monterrat"),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "\$",
                style: TextStyle(
                    fontSize: 14, fontFamily: "Monterrat", color: Colors.red),
              ),
              const Text(
                '8.99',
                style: TextStyle(fontFamily: "Monterrat", fontSize: 26),
              ),
            ],
          ),

          // ignore: prefer_const_constructors
          Text(
            'Lorem ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore ',
            style: const TextStyle(fontFamily: "MonterratR", fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Naked Options',
            style: TextStyle(fontFamily: "Monterrat", fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Special Request',
            style: TextStyle(fontFamily: "Monterrat", fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.17,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              //  color: const Color(0xfff8f8f8),
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8.0),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                  color: Colors.black38, //Color(0x29060000),
                  // offset: Offset(3, 6),
                  offset: Offset(3, 6),
                  blurRadius: 5,
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: const Text(
                'Make a special request . . .',
                style: TextStyle(
                  fontFamily: 'MontserratR',
                  fontSize: 16,
                  color: Color(0xffaaaaaa),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (() {
                  c.increment();
                }),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.009.h,
                  width: MediaQuery.of(context).size.width * 0.037.w,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    //  color: const Color(0xfff8f8f8),

                    borderRadius: BorderRadius.circular(14.0),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.grey, //Color(0x29060000),
                        // offset: Offset(3, 6),
                        offset: Offset(3, 6),
                        blurRadius: 6,
                      ),
                    ],
                  ),

                  // ignore: prefer_const_constructors
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: const Text(
                      '+',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 22,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              // ignore: prefer_const_constructors
              Obx(
                () => Text(
                  '${c.incenumber.toString()}',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: (() {
                  c.decrement();
                }),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.009.h,
                  width: MediaQuery.of(context).size.width * 0.037.w,
                  decoration: BoxDecoration(
                    //  color: const Color(0xfff8f8f8),
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(14.0),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.grey, //Color(0x29060000),
                        offset: Offset(3, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),

                  // ignore: prefer_const_constructors
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: const Text(
                      "-",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 22,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 45,
          ),

          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              //  color: const Color(0xfff8f8f8),
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                  color: Colors.grey, //Color(0x29060000),
                  offset: Offset(3, 6),
                  blurRadius: 5,
                ),
              ],
            ),

            // ignore: prefer_const_constructors
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: InkWell(
                onTap: (() {
                  // ignore: prefer_const_constructors
                  Get.to(CartPage());
                  // Get.to(const Product());
                  // Navigator.pop(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const BackGroundPage()));
                  // // Get.to(const Description());
                }),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ]),
      ),
    ])));
  }
}

// const Text(
//   'Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore et\n dolore magna aliqua. Ut enim ad minim veniam, \nquis nostrud exercitation ullamco laboris nisi ut \naliquip ex ea commodo consequat. Duis aute irure \ndolor in reprehenderit in voluptate velit esse cillum \ndolore ',
//   style: TextStyle(fontFamily: "Monterrat"),
 