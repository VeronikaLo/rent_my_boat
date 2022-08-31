import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rent_my_boat/screens/home_screen.dart';

import '../data/colors.dart';

class SplashScreen extends StatefulWidget {
  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
   @override
  void initState() {
    super.initState();
     Timer(const Duration(seconds: 4), ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => HomeScreen())),
     );
}

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
   return SafeArea(
     child: Scaffold(
       backgroundColor: background,
     body: Center(
      child: Container(
        width: currentWidth,
        padding: EdgeInsets.fromLTRB(73, 253, 72, 253.56),
        child: Image.asset('assets/images/splash.png'),
     )
     ),
   ));
    
  }

}