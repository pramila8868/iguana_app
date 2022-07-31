import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

//import '../listmodel.dart';
import '../../models/listmodel.dart';

class ListItm extends StatelessWidget {
  final Food foods;
  const ListItm({Key? key, required this.foods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.018.h,
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
            // ignore: prefer_const_literals_to_create_immutables
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  //const Text("Title"),

                  Row(
                    children: [
                      Text(
                        foods.foodName,
                        style: const TextStyle(
                            fontFamily: "Monterrat",
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 20,
                      ),

                      // ignore: prefer_const_constructors
                      Text(
                        // foods.dollar,
                        "\$",
                        style: const TextStyle(
                            fontFamily: "Monterrat",
                            fontSize: 12,
                            // fontWeight: FontWeight.w600
                            color: Colors.red),
                      ),
                      Text(
                        foods.price,
                        style: const TextStyle(
                            fontFamily: "Monterrat",
                            fontSize: 26,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  //"title"),
                  Text(
                    foods.foodType,
                    style: const TextStyle(
                        fontFamily: "MonterratR",
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                  //"title"),
                  Text(
                    foods.text,
                    style: const TextStyle(
                      fontFamily: "MonterratR",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    foods.subText,
                    style: const TextStyle(
                        fontFamily: "MonterratR",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                    // "title"),
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
