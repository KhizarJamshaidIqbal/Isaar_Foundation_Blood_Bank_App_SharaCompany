// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, unnecessary_import, implementation_imports, use_full_hex_values_for_flutter_colors, unnecessary_new, file_names

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:issar_foundation_blood_bank_app/API/Down_Banner_Api.dart';

import 'Donate_Us.dart';
import 'Looking_for_Blood.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    var scwidth = MediaQuery.of(context).size.width;
    var scheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffbf1e24),
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0,
          title: Text(
            "Blood Donation is a Great Act of Kindness",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xffF5F5F5)),
          ),
          backgroundColor: Color(0xffbf1e24),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
        ),
        body: Stack(children: [
          Container(
            height: scheight * 1,
            width: scwidth,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: SingleChildScrollView(
              child: SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40, left: 20),
                              child: CircleAvatar(
                                child: Text(
                                  "B+",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold),
                                ),
                                radius: 45,
                                backgroundColor: Color(0xffbf1e24),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Salaam,",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff333132)),
                              ),
                              Text(
                                "Yasir Malk,",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff333132)),
                              ),
                              Text(
                                "03217117928",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xffB5B5B5)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 38),
                      child: SizedBox(
                        width: scwidth * 0.78,
                        height: scheight * 0.2 / 2.8,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Looking_for_Blood()),
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
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "LET'S TALK",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffC33235)),
                      ),
                    ),
                    Text(
                      "0321 7117 928",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff323031)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 25),
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
                      height: 10.0,
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
                                    left: 6.0,
                                  ),
                                  child: SizedBox(
                                    height: 88.0,
                                    width: 88.0,
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(9.0),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 25),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "CAMPAIGN SPONSORS",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffC33235)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 80.0,
                      child: Column(
                        children: [
                          Flexible(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  Sponsor_Banner.Sponsor_Banner_pic.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, right: 5.0),
                                  child: SizedBox(
                                    height: 88,
                                    width: 88,
                                    child: Container(
                                      height: 88.0,
                                      decoration: new BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xffF5F5F5),
                                            blurRadius: 3,
                                            spreadRadius: 1,
                                          )
                                        ],
                                      ),
                                      child: Image(
                                          image: AssetImage(
                                              "${Sponsor_Banner.Sponsor_Banner_pic[index]["SlideShow"]}")),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 38),
                      child: SizedBox(
                        width: scwidth * 0.78,
                        height: scheight * 0.2 / 3,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Donate_Us()),
                            );
                          },
                          child: Text(
                            "Donate Us",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 2,
                              backgroundColor: Color(0xffF8B515),
                              shadowColor: Color(0xffF8B515),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
