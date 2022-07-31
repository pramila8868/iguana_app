import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'model/page/allpage/description.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        InkWell(
          onTap: (() {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const Description()));
            Get.to(const Description());
          }),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.13,
            decoration: BoxDecoration(
              color: Colors.white,
              //  color: const Color(0xfff8f8f8),
              //  color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(11.0),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                  color: Colors.black38, //Color(0x29060000),
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
        const SizedBox(
          width: 50,
        ),
        Image.asset(
          'assets/images/logo-final.png',
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.3,
        ),
        const SizedBox(
          width: 63,
        ),
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.02.h,
            height: MediaQuery.of(context).size.height * 0.019.w,
            // width: MediaQuery.of(context).size.width * 0.16,
            // height: MediaQuery.of(context).size.height * 0.07,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                //borderRadius: const BorderRadius.all(
                //Radius.elliptical(9999.0, 9999.0)),

                borderRadius: BorderRadius.circular(48.0),
                // ignore: prefer_const_constructors
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: const AssetImage(
                    'assets/images/Ellipse 5.png',
                  ),
                )),
          ),
        )
      ])
    ]));
  }
}
