// ignore_for_file: camel_case_types, prefer_const_constructors, unused_local_variable, file_names, unused_element, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:issar_foundation_blood_bank_app/view/Components/Customtextfield.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Home.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Login.dart';

import 'Looking_for_Blood.dart';

class Otp_Screen extends StatefulWidget {
  const Otp_Screen({super.key});

  @override
  State<Otp_Screen> createState() => _Otp_ScreenState();
}

class _Otp_ScreenState extends State<Otp_Screen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _OtpController = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _OtpController.dispose();
    }

    var scheight = MediaQuery.of(context).size.height;
    var scwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
              },
              child: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white)),
          title: Text(
            "Blood Donation is a Great Act of Kindness",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xffF5F5F5)),
          ),
          backgroundColor: Color(0xffbf1e24),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // ignore: prefer_const_literals_to_create_immutables
            Container(
              height: 20,
              width: double.infinity,
              color: Color(0xffbf1e24),
            ),
           Container(
              height: scheight * .9,
              width: scwidth,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0))),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 34.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 35.0,
                          ),
                          child: SizedBox(
                              height: 127,
                              width: 127,
                              child: Image.asset("Images/Logo2.png")),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text("Enter OTP",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700)),
                      Text("We have just sent you OTP on 03217117928",
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w400)),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text("Change Number",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffBF3437))),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      customtextfield(
                          textAlign: TextAlign.center,
                          prefixIcon: null,
                          KeyboardType: TextInputType.number,
                          controller: _OtpController,
                          hintText: "X X X X X X",
                          labelText: "Enter Otp"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text("Resend OTP",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffCACACA))),
                          ),
                          Text(
                            "0:54",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffF8B515)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      SizedBox(
                        width: scwidth * 0.88,
                        height: scheight * 0.2 / 3,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home_Screen()),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 3,
                              backgroundColor: Color(0xffC33235),
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      SizedBox(
                        width: scwidth * 0.88,
                        height: scheight * 0.2 / 3,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Looking_for_Blood()),
                            );
                          },
                          child: Text(
                            "Looking for Blood?",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 2,
                              backgroundColor: Color(0xff333132),
                              shadowColor: Color(0xffC33235),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                      ),
                      SizedBox(
                        height: 85,
                      ),
                      Center(
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Managed by",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text("SHARA Solutions SMC-Pvt Ltd",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
                    ],
                  ),), 
    );
  }
}



