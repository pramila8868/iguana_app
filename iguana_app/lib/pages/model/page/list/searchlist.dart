import 'package:flutter/material.dart';
import 'package:iguana_app/pages/model/models/searchmodel.dart';

class SearchList extends StatelessWidget {
  final Search search;
  const SearchList({Key? key, required this.search}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.17,
            width: MediaQuery.of(context).size.width * 0.92,

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
            // ignore: prefer_const_literals_to_create_immutables
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    search.image,
                    // 'assets/images/chicken_burger.png',
                    height: MediaQuery.of(context).size.height * 0.14,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          search.text,
                          style: const TextStyle(
                              fontFamily: "Monterrat",
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                          softWrap: false,
                        ),

                        // const SizedBox(
                        //   width: 20,
                        // ),

                        Text(
                          search.subText,
                          style: const TextStyle(
                            fontFamily: "MonterratR",
                            color: Color(0xff000000),
                            fontSize: 12,
                          ),
                        ),

                        // ignore: prefer_const_constructors
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
                              search.price,
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
