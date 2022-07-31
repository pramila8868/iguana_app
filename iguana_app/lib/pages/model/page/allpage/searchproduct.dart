import 'package:flutter/material.dart';
import 'package:iguana_app/pages/model/models/searchmodel.dart';
import 'package:iguana_app/pages/model/page/list/searchlist.dart';
import 'package:iguana_app/pages/profile.dart';
import 'package:sizer/sizer.dart';

//import 'description.dart';

class SearchProd extends StatelessWidget {
  const SearchProd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: avoid_unnecessary_containers
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(children: [
          const Profile(),
          Container(
              //height: MediaQuery.of(context).size.height * 0.007.h,
              width: MediaQuery.of(context).size.width * 0.23.w,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(8.0),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    color: Colors.grey,
                    // color: Color(0x29060000),
                    offset: Offset(3, 6),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: const TextField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search Something...",
                hintStyle: TextStyle(fontFamily: "MontserratR", fontSize: 14),
                suffixIcon: Icon(Icons.search),
                suffixIconColor: Colors.grey,
                // labelText: "Search Something...",
                contentPadding: EdgeInsets.all(13),
              ))),

          const SizedBox(
            height: 30,
          ),
          ...List.generate(searchproduct.length,
              (index) => SearchList(search: searchproduct[index])),

          //   ListView.builder(
          // shrinkWrap: true,
          // itemCount: searchproduct.length,
          // // ignore: sort_child_properties_last, sized_box_for_whitespace
          // itemBuilder: (context, index) =>
          //     SearchList(search: searchproduct[index]))
        ]),
      ),
    ));
  }
}
