import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iguana_app/pages/model/page/allpage/background_page.dart';
import 'package:sizer/sizer.dart';

import 'pages/animation.dart';
//import 'package:iguana_app/pages/description.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       //  theme: ThemeData(     primarySwatch: Colors.blue,    ),
//       home: BackGroundPage(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      // ignore: prefer_const_constructors
      return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          //  theme: ThemeData(     primarySwatch: Colors.blue,    ),
          // home: const BackGroundPage(),
          home: SpashScreen());
    });
  }
}
