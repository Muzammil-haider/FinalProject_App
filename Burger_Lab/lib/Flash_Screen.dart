

import 'dart:async';



import 'package:burger_lab/login.dart';
import 'package:flutter/material.dart';

class FlashScreen extends StatefulWidget{
  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context as BuildContext , MaterialPageRoute(builder: (context)=>LoginScreen()),
      );});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          height: 812,
          width: 375,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("asset/image/BurgerLab.png"),)),


        ),
      ) ,
    );
  }


}
