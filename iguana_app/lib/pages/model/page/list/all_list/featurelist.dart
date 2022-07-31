import 'package:flutter/material.dart';
import 'package:iguana_app/pages/model/models/categoriesmodel.dart';
import 'package:sizer/sizer.dart';

import '../../../models/featuremodel.dart';

class FeatureList extends StatelessWidget {
  final Feature feature;
  const FeatureList({Key? key, required this.feature}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.1.h,
          width: MediaQuery.of(context).size.width * 0.123.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13.0),

            // color: Colors.white,
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                //  color: Colors.grey.shade400,
                offset: Offset(3, 6),
                color: Colors.grey,
                blurRadius: 7,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(feature.image,
                    // 'assets/images/chicken_burger.png',
                    height: MediaQuery.of(context).size.height * 0.02.h,
                    width: MediaQuery.of(context).size.width * 0.2.w,
                    //  fit: BoxFit.cover
                    fit: BoxFit.fitWidth),
                Text(
                  feature.foodName,

                  //  "Burger",
                  style: const TextStyle(
                      fontFamily: "Monterrat",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      // foods.dollar,
                      "\$",
                      style: TextStyle(
                          fontFamily: "Monterrat",
                          fontSize: 12,
                          // fontWeight: FontWeight.w600
                          color: Colors.red),
                    ),
                    Text(
                      feature.price,
                      style: const TextStyle(
                        fontFamily: "Monterrat",
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
