// ignore_for_file: prefer_const_constructors, duplicate_ignore, sort_child_properties_last, camel_case_types, file_names, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'package:issar_foundation_blood_bank_app/API/Down_Banner_Api.dart';
import 'package:issar_foundation_blood_bank_app/view/Utils/Colors.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Home_Edit_Profile.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Looking_for_Blood.dart';

class Complte_Profile extends StatefulWidget {
  const Complte_Profile({super.key});

  @override
  State<Complte_Profile> createState() => _Complte_ProfileState();
}

class _Complte_ProfileState extends State<Complte_Profile> {
  @override
  Widget build(BuildContext context) {
    var scheight = MediaQuery.of(context).size.height;
    var scwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        // ignore: prefer_const_constructors
        title: Text(
          "Blood Donation is a Great Act of Kindness",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: globalColors.loghtColor),
        ),
        backgroundColor: globalColors.primaryColor,
      ),
      drawer: Drawer(),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 20,
            width: double.infinity,
            color: globalColors.primaryColor,
          ),
          Container(
            height: scheight * .86,
            width: scwidth,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0))),
            child: SingleChildScrollView(
              child: SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 24.0),
                      child: Row(
                        children: [
                          Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: CircleAvatar(
                                  radius: 45,
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      AssetImage("Images/Logo2.png"),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Salaam" + ",",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff333132)),
                              ),
                              Text(
                                "03217117928",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffB5B5B5)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0, right: 34.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: scwidth * 0.8,
                            height: scheight * 0.2 / 2.8,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Looking_for_Blood()),
                                );
                              },
                              child: Text(
                                "Looking for Blood?",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 3,
                                  backgroundColor: Color(0xff333132),
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0))),
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 25.0,
                          ),
                          Text(
                            "Blood Group",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xffF5F5F5),
                                radius: 30,
                                child: Text(
                                  "A+",
                                  style: TextStyle(
                                      color: Color(0xffB5B5B5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                backgroundColor: Color(0xffF5F5F5),
                                radius: 30,
                                child: Text(
                                  "A-",
                                  style: TextStyle(
                                      color: Color(0xffB5B5B5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                backgroundColor: Color(0xffF5F5F5),
                                radius: 30,
                                child: Text(
                                  "AB+",
                                  style: TextStyle(
                                      color: Color(0xffB5B5B5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                backgroundColor: Color(0xffF5F5F5),
                                radius: 30,
                                child: Text(
                                  "AB-",
                                  style: TextStyle(
                                      color: Color(0xffB5B5B5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xffBF3437),
                                radius: 30,
                                child: Text(
                                  "B+",
                                  style: TextStyle(
                                      color: Color(0xffB5B5B5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                backgroundColor: Color(0xffF5F5F5),
                                radius: 30,
                                child: Text(
                                  "B-",
                                  style: TextStyle(
                                      color: Color(0xffB5B5B5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                backgroundColor: Color(0xffF5F5F5),
                                radius: 30,
                                child: Text(
                                  "O+",
                                  style: TextStyle(
                                      color: Color(0xffB5B5B5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                backgroundColor: Color(0xffF5F5F5),
                                radius: 30,
                                child: Text(
                                  "O-",
                                  style: TextStyle(
                                      color: Color(0xffB5B5B5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 45.0,
                          ),
                          SizedBox(
                            width: scwidth * 0.88,
                            height: scheight * 0.2 / 3,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const update_profile()),
                                );
                              },
                              child: Text(
                                "Complete Profile",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 3,
                                  backgroundColor: Color(0xffC33235),
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 45.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "DONATION CAMPS",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffC33235)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    SizedBox(
                      height: 90.0,
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: Down_Banner_pic.Pic_Banner.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                  ),
                                  child: SizedBox(
                                    height: 88.0,
                                    width: 88.0,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(9.0),
                                        child: Image(
                                            image: AssetImage(
                                                "${Down_Banner_pic.Pic_Banner[index]["SlideShow"]}"),
                                            fit: BoxFit.fill)),
                                  ),
                                );
                              },
                            ),
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
      ),
    );
  }
}
