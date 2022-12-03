// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
//import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
//import 'package:iguana_app/pages/model/listmodel.dart';
import 'package:iguana_app/pages/model/page/allpage/description.dart';
import 'package:iguana_app/pages/model/page/list/listitem.dart';
import 'package:sizer/sizer.dart';

import '../../models/listmodel.dart';

//import '../../listitem.dart';
//import '../listmodel.dart';

class CartPage extends StatelessWidget {
  //final List<Food> foods;
  const CartPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (() {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => Description()));
                    Get.to(Description());
                  }),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.008.h,
                    width: MediaQuery.of(context).size.width * 0.13,
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      //  color: const Color(0xfff8f8f8),
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(11.0),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black38, //Color(0x29060000),
                          // offset: Offset(3, 6),
                          offset: Offset(3, 6),
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
                  width: 45,
                ),
                Image.asset(
                  'assets/images/logo-final.png',
                  height: MediaQuery.of(context).size.height * 0.025.h,
                  width: MediaQuery.of(context).size.width * 0.29,
                ),
                const SizedBox(
                  width: 50,
                ),
                Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Container(
                      // width: MediaQuery.of(context).size.width * 0.14,
                      // height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.02.h,
                      height: MediaQuery.of(context).size.height * 0.019.w,
                      // ignore: prefer_const_constructors
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48.0),
                          // ignore: prefer_const_constructors
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: const AssetImage(
                              'assets/images/Ellipse 5.png',
                            ),
                          )),
                    )),
              ],
            ),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 68),
                child: Image.asset(
                  'assets/images/h1-lime.png',
                  // height: MediaQuery.of(context).size.height * 0.06,
                  //  width: MediaQuery.of(context).size.width * 0.13,
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "My Cart",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
                ),
              )
            ]),
            //Container(
            //children: [
            // ignore: deprecated_member_use, prefer_collection_literals
            //   ...List.generate(3, (index) => (const ListItm(foods: ,))
            //   const ListItm(
            //       // foods:Food ,
            //       ),
            //  ).toList(),

            ListView.builder(
                shrinkWrap: true,
                itemCount: food.length,
                // ignore: sort_child_properties_last, sized_box_for_whitespace
                itemBuilder: (context, index) {
                  return Slidable(
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        Expanded(
                          child:
                              // ignore: sized_box_for_whitespace
                              Container(
                            width: MediaQuery.of(context).size.width * 0.002.w,
                            height:
                                MediaQuery.of(context).size.height * 0.018.h,
                            child: SlidableAction(
                                onPressed: (context) {},
                                backgroundColor: Colors.pink,
                                icon: Icons.delete),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.018.h,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(26.0)),
                          child: SlidableAction(
                            onPressed: (context) {},
                            backgroundColor: Colors.blue,
                            icon: Icons.edit,
                          ),
                        ),
                      ],
                    ),
                    child: ListItm(foods: food[index]),
                  );
                }),

            const SizedBox(
              height: 30,
            ),

            Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.027.h,
                width: MediaQuery.of(context).size.width * 0.92.w,

                //height: 100,
                // width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.0),
                    // color: Colors.black,
                    color: Colors.white,
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        //  color: Colors.grey.shade400,
                        offset: Offset(3, 6),
                        color: Colors.grey,
                        blurRadius: 7,
                      ),
                    ]),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "Sub Total:",
                            style: TextStyle(
                                fontFamily: "Monterrat", fontSize: 16),
                          ),
                          const SizedBox(
                            width: 160,
                          ),
                          const Text("\$21.98",
                              style: TextStyle(
                                fontFamily: "Monterrat",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text("Service Fee:",
                              style: TextStyle(
                                fontFamily: "Monterrat",
                                fontSize: 16,
                              )),
                          const SizedBox(
                            width: 145,
                          ),
                          const Text("\$2",
                              style: TextStyle(
                                fontFamily: "Monterrat",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text("Total:",
                              style: TextStyle(
                                fontFamily: "Monterrat",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                          const SizedBox(
                            width: 195,
                          ),
                          const Text("\$23.98",
                              style: TextStyle(
                                fontFamily: "Monterrat",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110, left: 120),
                child: Column(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.004.h,
                        width: MediaQuery.of(context).size.width * 0.15.w,
                        //height: 100,
                        // width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.0),
                          // color: Colors.black,
                          color: Colors.white,
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
                          padding: const EdgeInsets.only(top: 3, left: 20),
                          child: Row(children: [
                            Image.asset(
                              'assets/images/Group 25.png',
                              // height: MediaQuery.of(context).size.height * 0.06,
                              //  width: MediaQuery.of(context).size.width * 0.13,
                            ),
                            const SizedBox(
                              width: 60,
                            ),
                            Image.asset(
                              'assets/images/Repeat Grid 1.png',
                              height:
                                  MediaQuery.of(context).size.height * 0.006.h,
                              width: MediaQuery.of(context).size.width * 0.02.w,
                            )
                          ]),
                        ))
                  ],
                ),
              ),
            ])
          ],
        )),
      ),
    ));
  }
}
