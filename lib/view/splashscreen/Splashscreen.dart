// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unused_local_variable, unused_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:issar_foundation_blood_bank_app/view/Utils/Colors.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Home.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Login.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Looking_for_Blood.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    var scheight = MediaQuery.of(context).size.height;
    var scwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: scheight * .26,
              left: scwidth * .22,
              child: SizedBox(
                  height: 201,
                  width: 201,
                  child: Image.asset("Images/Logo2.png"))),
          Positioned(
              top: scheight * .54,
              left: scwidth * .372,
              child: Lottie.asset("Images/Circular_Loader.json",
                  height: 90, width: 90)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Managed by",
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                  ),
                  Text("SHARA Solutions SMC-Pvt Ltd",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
