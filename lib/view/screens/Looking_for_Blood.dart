// ignore_for_file: camel_case_types, prefer_const_constructors, unused_local_variable, file_names, unused_element, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:issar_foundation_blood_bank_app/view/Components/Customtextfield.dart';

import 'Complete_Profile.dart';
import 'Home.dart';
import 'Login.dart';

class Looking_for_Blood extends StatefulWidget {
  const Looking_for_Blood({super.key});

  @override
  State<Looking_for_Blood> createState() => _Looking_for_BloodState();
}

class _Looking_for_BloodState extends State<Looking_for_Blood> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _NameControlle = TextEditingController();
    final TextEditingController _PhoneNumberControlle = TextEditingController();
    final TextEditingController _AddressControlle = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _NameControlle.dispose();
      _AddressControlle.dispose();
      _PhoneNumberControlle.dispose();
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
              height: scheight * .86,
              width: scwidth,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0))),
              child: Padding(
                padding: const EdgeInsets.only(left: 45.0, right: 34.0),
                child: SingleChildScrollView(
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 15.0,
                            ),
                            child: SizedBox(
                                height: 81,
                                width: 81,
                                child: Image.asset("Images/Logo2.png")),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text("Submit Details",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w700)),
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
                            controller: _NameControlle,
                            hintText: "Name",
                            labelText: "Name"),
                        SizedBox(
                          height: 15.0,
                        ),
                        customtextfield(
                            textAlign: TextAlign.start,
                            prefixIcon: Icon(
                              Icons.phone_iphone_outlined,
                              color: Color(0xffC33235),
                            ),
                            KeyboardType: TextInputType.number,
                            controller: _PhoneNumberControlle,
                            hintText: "03xxxxxxxx",
                            labelText: "03xxxxxxxx"),
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
                            controller: _AddressControlle,
                            hintText: "Address",
                            labelText: "Address"),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Blood Group",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333132)),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffF5F5F5),
                              radius: 15,
                              child: Text(
                                "A+",
                                style: TextStyle(
                                    color: Color(0xffB5B5B5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xffF5F5F5),
                              radius: 15,
                              child: Text(
                                "A-",
                                style: TextStyle(
                                    color: Color(0xffB5B5B5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xffF5F5F5),
                              radius: 15,
                              child: Text(
                                "AB+",
                                style: TextStyle(
                                    color: Color(0xffB5B5B5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xffF5F5F5),
                              radius: 15,
                              child: Text(
                                "AB-",
                                style: TextStyle(
                                    color: Color(0xffB5B5B5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xffBF3437),
                              radius: 15,
                              child: Text(
                                "B+",
                                style: TextStyle(
                                    color: Color(0xffB5B5B5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xffF5F5F5),
                              radius: 15,
                              child: Text(
                                "B-",
                                style: TextStyle(
                                    color: Color(0xffB5B5B5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xffF5F5F5),
                              radius: 15,
                              child: Text(
                                "O+",
                                style: TextStyle(
                                    color: Color(0xffB5B5B5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xffF5F5F5),
                              radius: 15,
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
                          height: 35.0,
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
                                        const Complte_Profile()),
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
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                        ),
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
                                    builder: (context) => const Home_Screen()),
                              );
                            },
                            child: Text(
                              "Login",
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
                          height: 45.0,
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
                        ),
                        SizedBox(
                          height: 10.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
