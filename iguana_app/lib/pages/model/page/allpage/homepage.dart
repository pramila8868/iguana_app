import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iguana_app/pages/model/models/categoriesmodel.dart';
import 'package:iguana_app/pages/model/models/featuremodel.dart';
import 'package:iguana_app/pages/model/page/allpage/categories_page.dart';
import 'package:iguana_app/pages/model/page/allpage/description.dart';
import 'package:iguana_app/pages/model/page/list/all_list/caregorieslist.dart';
import 'package:iguana_app/pages/model/page/list/all_list/featurelist.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return SafeArea(
      child: Scaffold(
          // ignore: avoid_unnecessary_containers
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: [
                  // ignore: sized_box_for_whitespace
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.0096.h,
                        width: MediaQuery.of(context).size.width * 0.038.w,
                        // color: Colors.blue,
                        //height: 100,
                        // width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.0),
                          color: Colors.white,

                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              //     offset: Offset(0, 2),
                              blurRadius: 7,
                            ),
                          ],
                        ),
                        child: Column(children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.0018.h,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.008.w,
                                          //height: 100,
                                          // width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(13.0),
                                            color: Colors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.0018.h,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.008.w,
                                          //height: 100,
                                          // width: 100,
                                          decoration: const BoxDecoration(
                                            // borderRadius:
                                            //     BorderRadius.circular(13.0),

                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //const SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.0018.h,
                                  width: MediaQuery.of(context).size.width *
                                      0.008.w,
                                  //height: 100,
                                  // width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.0018.h,
                                  width: MediaQuery.of(context).size.width *
                                      0.008.w,
                                  //height: 100,
                                  // width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.pink.shade600,
                                    //  borderRadius: const BorderRadius.all(
                                    //Radius.elliptical(9999.0, 9999.0)),

                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])),
                  ),

                  const SizedBox(
                    width: 60,
                  ),
                  Image.asset(
                    'assets/images/logo-final.png',
                    height: MediaQuery.of(context).size.height * 0.009.h,
                    width: MediaQuery.of(context).size.width * 0.06.w,
                  ),
                  const SizedBox(
                    width: 67,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.02.h,
                      height: MediaQuery.of(context).size.height * 0.019.w,
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

                  //Image.asset("")
                ]),
              ),
              Stack(children: [
                Image.asset(
                  'assets/images/Group 2.png',
                  //height: MediaQuery.of(context).size.height * 0.029.h,
                  //width: MediaQuery.of(context).size.width * 0.6.w,
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 49, horizontal: 24),
                  child: const Text(
                    "SEARCH WHAT YOU CRAVE FOR ...",
                    style: TextStyle(
                        fontFamily: 'AmaticSc',
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 69),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.006.h,
                      width: MediaQuery.of(context).size.width * 0.24.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8.0),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.grey,
                            // color: Color(0x29060000),
                            //  offset: Offset(3, 6),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            // keyboardType: Keyboard.name,

                            // icon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.search),
                            suffixIconColor: Colors.grey),
                      )),
                )
              ]),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Image.asset(
                    'assets/images/Group 29.png',
                    height: MediaQuery.of(context).size.height * 0.009.h,
                    // width: MediaQuery.of(context).size.width * 0.04.w,
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  InkWell(
                    onTap: (() {
                      Get.to(const CategoriesPage());
                    }),
                    child: const Text(
                      "SEE MORE",
                      style: TextStyle(fontFamily: "MonterratR", fontSize: 12),
                    ),
                  ),

                  // Expanded(
                  //   child: GridView.builder(
                  //       shrinkWrap: true,
                  //       itemCount: foodcategory.length,
                  //       //scrollDirection: VerticalDirection,
                  //       gridDelegate:
                  //           const SliverGridDelegateWithFixedCrossAxisCount(
                  //               crossAxisCount: 6,
                  //               crossAxisSpacing: 4.0,
                  //               mainAxisSpacing: 4.0),
                  //       itemBuilder: (context, index) {
                  //         return CateoriesList(category: foodcategory[index]);
                  //       }),
                  //        )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025.h,
                //width: MediaQuery.of(context).size.width * 0.04.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: foodcategory.length,
                  scrollDirection: Axis.horizontal,
                  // ignore: sort_child_properties_last, sized_box_for_whitespace
                  itemBuilder: (context, index) =>
                      CateoriesList(category: foodcategory[index]),
                ),
              ),
              Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Image.asset(
                      'assets/images/Group 1.png',
                      height: MediaQuery.of(context).size.height * 0.009.h,
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    InkWell(
                      onTap: (() {
                        Get.to(Description());
                      }),
                      child: const Text(
                        "SEE MORE",
                        style:
                            TextStyle(fontFamily: "MonterratR", fontSize: 12),
                      ),
                    ),
                  ]),
              // const SizedBox(
              //   height: 20,
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0312.h,
                width: MediaQuery.of(context).size.width * 0.5.w,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: foodfeature.length,
                  scrollDirection: Axis.horizontal,
                  // ignore: sort_child_properties_last, sized_box_for_whitespace
                  itemBuilder: (context, index) =>
                      FeatureList(feature: foodfeature[index]),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
