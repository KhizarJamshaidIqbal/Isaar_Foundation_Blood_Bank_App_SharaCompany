// ignore_for_file: prefer_const_constructors, duplicate_ignore, camel_case_types, prefer_const_literals_to_create_immutables, prefer_adjacent_string_concatenation, sort_child_properties_last, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_element, file_names

import 'package:flutter/material.dart';
import 'package:issar_foundation_blood_bank_app/API/Down_Banner_Api.dart';
import 'package:issar_foundation_blood_bank_app/view/Components/Customtextfield.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Home.dart';
import 'package:issar_foundation_blood_bank_app/view/share/Looking_for_Blood.dart';

class update_profile extends StatefulWidget {
  const update_profile({super.key});

  @override
  State<update_profile> createState() => _update_profileState();
}

class _update_profileState extends State<update_profile> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _NameController = TextEditingController();
    final TextEditingController _OccupationController = TextEditingController();
    final TextEditingController _AddressController = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _NameController.dispose();
      _OccupationController.dispose();
      _AddressController.dispose();
    }

    var scheight = MediaQuery.of(context).size.height;
    var scwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        // ignore: prefer_const_constructors
        title: Text(
          "Blood Donation is a Great Act of Kindness",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xffF5F5F5)),
        ),
        backgroundColor: Color(0xffbf1e24),
      ),
      drawer: Drawer(),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 20,
            width: double.infinity,
            color: Color(0xffbf1e24),
          ),
          Container(
            height: scheight * .89,
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
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundColor: Color(0xffBF3437),
                                child: Text(
                                  "B+",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffFFFFFF)),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                      height: 20.0,
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
                          SizedBox(
                            height: 25.0,
                          ),
                          Text(
                            "Update Profile",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          customtextfield(
                              textAlign: TextAlign.start,
                              prefixIcon: Icon(
                                Icons.person_outline_sharp,
                                color: Color(0xffC33235),
                              ),
                              KeyboardType: TextInputType.text,
                              controller: _NameController,
                              hintText: "Name",
                              labelText: "Name"),
                          SizedBox(
                            height: 15.0,
                          ),
                          customtextfield(
                              textAlign: TextAlign.start,
                              prefixIcon: Icon(
                                Icons.person_outline_sharp,
                                color: Color(0xffC33235),
                              ),
                              KeyboardType: TextInputType.text,
                              controller: _OccupationController,
                              hintText: "Occupation",
                              labelText: "Occupation"),
                          SizedBox(
                            height: 15.0,
                          ),
                          customtextfield(
                              textAlign: TextAlign.start,
                              prefixIcon: Icon(
                                Icons.location_on,
                                color: Color(0xffC33235),
                              ),
                              KeyboardType: TextInputType.text,
                              controller: _AddressController,
                              hintText: "Address",
                              labelText: "Address"),
                          SizedBox(
                            height: 25.0,
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
                                          const Home_Screen()),
                                );
                              },
                              child: Text(
                                "Submit",
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
                      height: 20.0,
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
                      child: Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Down_Banner_pic.Pic_Banner.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: SizedBox(
                                height: 88,
                                width: 88,
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
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // Expanded(
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(
                    //       left: 10.0,
                    //       right: 15.0,
                    //     ),
                    //     child: ListView(
                    //       scrollDirection: Axis.horizontal,
                    //       children: [
                    //         Row(
                    //           children: [
                    //             SizedBox(
                    //               height: 90,
                    //               width: 85,
                    //               child: ClipRRect(
                    //                   borderRadius: BorderRadius.circular(9.0),
                    //                   child: Image(
                    //                       image: AssetImage(
                    //                           "Images/Rectangle 11.png"),
                    //                       fit: BoxFit.fill)),
                    //             ),
                    //             SizedBox(
                    //               width: 10,
                    //             ),
                    //             SizedBox(
                    //               height: 90,
                    //               width: 85,
                    //               child: ClipRRect(
                    //                   borderRadius: BorderRadius.circular(9.0),
                    //                   child: Image(
                    //                       image: AssetImage(
                    //                           "Images/Rectangle 12.png"),
                    //                       fit: BoxFit.fill)),
                    //             ),
                    //             SizedBox(
                    //               width: 10,
                    //             ),
                    //             SizedBox(
                    //               height: 90,
                    //               width: 85,
                    //               child: ClipRRect(
                    //                   borderRadius: BorderRadius.circular(9.0),
                    //                   child: Image(
                    //                       image: AssetImage(
                    //                           "Images/Rectangle 13.png"),
                    //                       fit: BoxFit.fill)),
                    //             ),
                    //             SizedBox(
                    //               width: 10,
                    //             ),
                    //             SizedBox(
                    //               height: 90,
                    //               width: 85,
                    //               child: ClipRRect(
                    //                   borderRadius: BorderRadius.circular(9.0),
                    //                   child: Image(
                    //                       image: AssetImage(
                    //                           "Images/Rectangle 14.png"),
                    //                       fit: BoxFit.fill)),
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
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
