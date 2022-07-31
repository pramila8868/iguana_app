// import 'package:flutter/material.dart';

// //https://flutteragency.com/slidetransition-widget/
// class AnimationPage extends StatefulWidget {
//   const AnimationPage({Key? key}) : super(key: key);

//   @override
//   State<AnimationPage> createState() => _AnimationPageState();
// }

// class _AnimationPageState extends State<AnimationPage>
//     with TickerProviderStateMixin {
//   //SingleTickerProviderStateMixin

//   late AnimationController _animationcontroller;
//   late AnimationController _animationcontroller1;
//   late AnimationController _animationcontroller2;
//   late Animation<Offset> _animation;
//   late Animation<Offset> _animation1;
//   late Animation<double> _animation2;

//   @override
//   void initState() {
//     super.initState();
//     _animationcontroller = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..forward();
//     _animation = Tween<Offset>(
//       begin: const Offset(-0.5, 0.0),
//       end: const Offset(0.5, 0.0),
//     ).animate(CurvedAnimation(
//       parent: _animationcontroller,
//       curve: Curves.easeInCubic,
//     ));

//     _animationcontroller1 = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..forward();
//     _animation1 = Tween<Offset>(
//       begin: const Offset(-0.5, 0.0),
//       end: const Offset(0.5, 0.0),
//     ).animate(CurvedAnimation(
//       parent: _animationcontroller,
//       curve: Curves.easeInCubic,
//     ));

//     _animationcontroller2 = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..repeat(reverse: true);
//     _animation2 =
//         CurvedAnimation(parent: _animationcontroller2, curve: Curves.easeIn);
//   }

//   // //late final AnimationController _controller = AnimationController(
//   //   duration: const Duration(seconds: 2),
//   //   vsync: this,
//   // )..repeat(reverse: true);
//   // late final Animation<Offset> _offsetAnimation = Tween<Offset>(
//   //   begin: Offset.zero,
//   //   end: const Offset(1.5, 0.0),
//   // ).animate(CurvedAnimation(
//   //   parent: _controller,
//   //   curve: Curves.elasticIn,
//   // ));

//   @override
//   void dispose() {
//     _animationcontroller.dispose();
//     _animationcontroller1.dispose();
//     _animationcontroller2.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SlideTransition(
      
//       // position: _offsetAnimation,
//       // child: const Padding(
//       //   padding: EdgeInsets.all(8.0),
//       //   child: FlutterLogo(size: 150.0),
//       position: _animation,

//       //   position: _animation1,
//       //position: _animation2,
//       transformHitTests: true,
//       textDirection: TextDirection.ltr,
      
//       child: Image.asset("assets/images/h1-yellow-border-bottom.png"),
//      // Image.asset("assets/images/h1-yellow-border-bottom.png"),]
//     );
//   }
// }
