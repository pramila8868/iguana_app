import 'package:flutter/material.dart';
import 'package:iguana_app/pages/profile.dart';

import '../../models/productmodel.dart';
import '../list/productitem.dart';

class BurgerPage extends StatelessWidget {
  const BurgerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Profile(),
              Image.asset(
                'assets/images/Group 27.png',
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: product.length,
                // ignore: sort_child_properties_last, sized_box_for_whitespace
                itemBuilder: (context, index) =>
                    ProductItm(products: product[index]),
              )
            ]),
      ),

      //],
    );
  }
}
