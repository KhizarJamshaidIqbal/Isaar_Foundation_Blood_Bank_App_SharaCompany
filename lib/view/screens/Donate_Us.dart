// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, unnecessary_import, implementation_imports, use_full_hex_values_for_flutter_colors, unnecessary_new, file_names

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Home.dart';
import 'Looking_for_Blood.dart';

class Donate_Us extends StatefulWidget {
  const Donate_Us({super.key});

  @override
  State<Donate_Us> createState() => _Donate_UsState();
}

class _Donate_UsState extends State<Donate_Us> {
  @override
  Widget build(BuildContext context) {
    var scwidth = MediaQuery.of(context).size.width;
    var scheight = MediaQuery.of(context).size.width;
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
                        height: scheight * 0.2 / 1.3,
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
                      padding: const EdgeInsets.only(top: 35, left: 20),
                      child: Text(
                        "DONATE US",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffC33235)),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20.0,
                      ),
                      child: Container(
                        height: 102.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF5F5F5),
                              blurRadius: 3, // soften the shadow
                              spreadRadius: 3, //extend the shadow
                              offset: Offset(
                                0,
                                0,
                              ),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                      height: 90,
                                      width: 141,
                                      child: Image(
                                          image: AssetImage("Images/du1.png")))
                                ],
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "BANK ISLAMI",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff000000)),
                                  ),
                                  Text(
                                    "ACCOUNT TITLE:",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff000000)),
                                  ),
                                  Text(
                                    "ISAAR WELFARE FOUNDATION AND ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff000000)),
                                  ),
                                  Text(
                                    "BLOOD BANK ACCOUNT \nNUMBER: 3077 5834 554 0001",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff000000)),
                                  ),
                                  Text(
                                    "BRANCH CODE:3077",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff000000)),
                                  ),
                                  Text(
                                    "SHAHAB PURA ROAD.SIALKOT.",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff000000)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20.0),
                      child: Container(
                        height: 102.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF5F5F5),
                              blurRadius: 3, // soften the shadow
                              spreadRadius: 3, //extend the shadow
                              offset: Offset(
                                0,
                                0,
                              ),
                            )
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(top: 17.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: 70,
                                      width: 141,
                                      child: Image(
                                          image: AssetImage("Images/du2.png")))
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(top: 25.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "JAZZCASH",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff000000)),
                                  ),
                                  Text(
                                    "MUHAMMAD SIDDIQUE",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff000000)),
                                  ),
                                  Text(
                                    "03006153678",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff000000)),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 38),
                      child: SizedBox(
                        width: scwidth * 0.78,
                        height: scheight * 0.2 / 1.3,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home_Screen()),
                            );
                          },
                          child: Text(
                            "Contact Us",
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
