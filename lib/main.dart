// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Complete_Profile.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Donate_Us.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Home.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Login.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Looking_for_Blood.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Otp.dart';
import 'package:issar_foundation_blood_bank_app/view/splashscreen/Splashscreen.dart';

import 'view/share/Home_Edit_Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Issar Foundation Blood Bank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
