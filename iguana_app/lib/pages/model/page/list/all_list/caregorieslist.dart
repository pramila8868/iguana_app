import 'package:flutter/material.dart';
import 'package:iguana_app/pages/model/models/categoriesmodel.dart';
import 'package:sizer/sizer.dart';

class CateoriesList extends StatelessWidget {
  final Categories category;
  const CateoriesList({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        //crossAxisAlignment: CrossAxisAlignment.start,

        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(children: [
            Container(
              // height: MediaQuery.of(context).size.height * 0.2.h,
              decoration: BoxDecoration(
                //color: Colors.red,
                borderRadius: BorderRadius.circular(13.0),
                //   color: Colors.red,
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    //  color: Colors.grey.shade400,
                    offset: Offset(3, 6),
                    color: Colors.grey,
                    blurRadius: 7,
                  ),
                ],
                // // ignore: prefer_const_constructors
                // image: DecorationImage(
                //   fit: BoxFit.cover,
                //   image: const AssetImage(
                //     'assets/images/Ellipse 5.png',
                //   ),
                // )
              ),
            ),
            Image.asset(category.image,
                // 'assets/images/chicken_burger.png',
                height: MediaQuery.of(context).size.height * 0.023.h,
                width: MediaQuery.of(context).size.width * 0.09.w,
                // height: MediaQuery.of(context).size.height * 0.01.h,
                //width: MediaQuery.of(context).size.width * 0.1.w,
                fit: BoxFit.fitHeight),
            Positioned(
              bottom: 10, //20,
              left: 20,
              child: Text(
                category.foodName,
                //  "Burger",
                style: const TextStyle(
                    fontFamily: "Monterrat",
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ]),
        ]);
  }
}
