import 'package:flutter/material.dart';
import 'package:iguana_app/pages/model/models/productmodel.dart';
import 'package:iguana_app/pages/model/page/allpage/cartpage.dart';
//import 'package:iguana_app/pages/model/models/searchmodel.dart';
import 'package:iguana_app/pages/model/page/allpage/description.dart';
import 'package:iguana_app/pages/model/page/allpage/homepage.dart';
import 'package:iguana_app/pages/model/page/allpage/product.dart';
import 'package:iguana_app/pages/model/page/allpage/searchproduct.dart';
import 'package:iguana_app/pages/model/page/list/productitem.dart';
import 'package:sizer/sizer.dart';

class BtmNavigationBar extends StatefulWidget {
  const BtmNavigationBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BtmNavigationBar createState() => _BtmNavigationBar();
}

class _BtmNavigationBar extends State<BtmNavigationBar> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),

    const SearchProd(),
    const Description(),
    const CartPage(),
    const BurgerPage(),

    //const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xffC4DFCB),
      //  backgroundColor: Colors.teal,

      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context), //buildMy... no need
      //instead of writing the whole code in the scaffold it’s self we will
      //write a function (method)
      //that will return our target bottom Navigation Bar widget.
    ); // no need
  } //no

  Padding buildMyNavBar(BuildContext context) {
    // no
    return // no
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              // padding: const EdgeInsets.all(8.0),
              height: MediaQuery.of(context).size.height * 0.009.h,
              decoration: BoxDecoration(
                color: const Color(0xFFE9003F),
                // color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(12
                    // topLeft: Radius.circular(20),
                    // topRight: Radius.circular(20),
                    ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    icon: pageIndex == 0
                        ? const Icon(
                            Icons.home_filled,
                            color: Colors.white,
                            size: 35,
                          )
                        : const Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                  ),
                  IconButton(
                    enableFeedback:
                        true, // produce sound while clicking in this button
                    onPressed: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    icon: pageIndex == 1
                        ? const Icon(
                            Icons.work_rounded,
                            color: Colors.white,
                            size: 35,
                          )
                        : const Icon(
                            Icons.work_outline_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    icon: pageIndex == 2
                        ? const Icon(
                            Icons.widgets_rounded,
                            color: Colors.white,
                            size: 35,
                          )
                        : const Icon(
                            Icons.widgets_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    icon: pageIndex == 3
                        ? const Icon(
                            Icons.search_off_sharp,
                            color: Colors.white,
                            size: 35,
                          )
                        : const Icon(
                            Icons.search_sharp,
                            color: Colors.white,
                            size: 35,
                          ),
                  ),
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 4;
                      });
                    },
                    icon: pageIndex == 4
                        ? const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 35,
                          )
                        : const Icon(
                            Icons.person_outline,
                            color: Colors.white,
                            size: 35,
                          ),
                  ),
                ],
              ),
              // ),
            ));
  }
}
