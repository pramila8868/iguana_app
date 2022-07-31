// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iguana_app/pages/model/models/searchmodel.dart';
import 'package:iguana_app/pages/model/page/allpage/categories_page.dart';
import 'package:iguana_app/pages/model/page/allpage/description.dart';
import 'package:iguana_app/pages/model/page/allpage/homepage.dart';
import 'package:iguana_app/pages/model/page/allpage/searchproduct.dart';
//import 'package:get/get.dart';

//import '../controller/bottomnavigation.dart';
//import 'home_page_na.dart';

// class BottomNavigation extends StatelessWidget {
//   const BottomNavigation({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<BtmNavigationController>(
//       builder: (controller) {
//         return const Scaffold(
//             //body: SafeArea(
//   child: IndexedStack(
//     index: controller.tabIndex,
//     // ignore: prefer_const_literals_to_create_immutables
//     children: [
//       const HomePage(),
//       //  NewsPage(),
//       //AlertsPage(),
//       //AccountPage(),
//     ],
//   ),
// ),
// bottomNavigationBar: BottomNavigationBar(
//   unselectedItemColor: Colors.black,
//   selectedItemColor: Colors.redAccent,
//   onTap: controller.changeTabIndex,
//   currentIndex: controller.tabIndex,
//   showSelectedLabels: false,
//   showUnselectedLabels: false,
//   type: BottomNavigationBarType.fixed,
//   backgroundColor: Colors.white,
//   elevation: 0,
//   // ignore: prefer_const_literals_to_create_immutables
//   items: [
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.home),
//       label: 'Home',
//     ),
//     // ignore: prefer_const_constructors
//     BottomNavigationBarItem(
//       icon: const Icon(
//         Icons.home_outlined,
//       ),
//       label: 'News',
//     ),
//     const BottomNavigationBarItem(
//       icon: Icon(
//         Icons.widgets_rounded,
//       ),
//       label: 'Alerts',
//     ),
//     // ignore: prefer_const_constructors
//     BottomNavigationBarItem(
//       icon: const Icon(
//         Icons.person,
//         color: Colors.white,
//         size: 35,
//       ),
//       label: 'Account',
//     ),
//   ],
// ),

//       );
// },

// bottomNavigationBar: BottomNavigationBar(
//   onTap: controller.changeTabIndex,
//   currentIndex: controller.tabIndex,
//   items: [
//     BottomNavigationBarItem(
//       icon: Icon(CupertinoIcons.home),
//       label: 'Home',
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(CupertinoIcons.sportscourt),
//       label: 'News',
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(CupertinoIcons.bell),
//       label: 'Alerts',
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(CupertinoIcons.person),
//       label: 'Account',
//     ),
//   ],
// ),
//     );
//   }
// }

// class ButtomNavigation extends StatelessWidget {
//   const ButtomNavigation({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         bottonNavigationBar:ButtomNavigationPage
//       ),
//     );
//   }
// }

class ButtomNavigationPage extends StatefulWidget {
  const ButtomNavigationPage({Key? key}) : super(key: key);

  @override
  State<ButtomNavigationPage> createState() => _ButtomNavigationPageState();
}

class _ButtomNavigationPageState extends State<ButtomNavigationPage> {
  int pageIndex = 0;
  final page = [HomePage(), Description(), SearchProd()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // ignore: duplicate_ignore
        child: Container(
          height: 50,
          // width: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFE9003F),
            borderRadius: BorderRadius.circular(18
                // topLeft: Radius.circular(20),
                // topRight: Radius.circular(20),
                ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              IconButton(
                //enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.spoke_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              IconButton(
                //enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.work,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
