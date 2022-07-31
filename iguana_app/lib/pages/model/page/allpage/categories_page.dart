import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iguana_app/pages/model/models/categoriesmodel.dart';
import 'package:iguana_app/pages/model/page/list/all_list/caregorieslist.dart';
import 'package:iguana_app/pages/profile.dart';
import 'package:sizer/sizer.dart';

import '../list/all_list/categorypagelist.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 7,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Profile(),
            Image.asset(
              'assets/images/Group 29.png',
              height: MediaQuery.of(context).size.height * 0.008.h,
              // width: MediaQuery.of(context).size.width * 0.04.w,
            ),

            // ignore: prefer_const_constructors
            Expanded(
              child: GridView.builder(

                  //shrinkWrap: true,
                  itemCount: foodcategory.length,
                  // // ignore: prefer_const_constructors
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1, //12.0,
                      mainAxisSpacing: 1),
                  itemBuilder: (context, index) {
                    return CateoriesPageList(category: foodcategory[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
