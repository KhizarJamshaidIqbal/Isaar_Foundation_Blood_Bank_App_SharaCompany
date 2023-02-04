// ignore_for_file: camel_case_types, prefer_const_constructors, unused_local_variable, file_names, unused_element, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, sort_child_properties_last, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:issar_foundation_blood_bank_app/view/Components/Customtextfield.dart';

import 'Looking_for_Blood.dart';
import 'Otp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _PhoneNumber = TextEditingController();

    @override
    void dispose() {
      super.dispose();
      _PhoneNumber.dispose();
    }

    var scheight = MediaQuery.of(context).size.height;
    var scwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: SizedBox(
                  height: 200,
                  child: Image(
                    image: AssetImage("Images/banner.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 362, left: 45, right: 40),
                child: SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("GET STARTED",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 20.0,
                        ),
                        customtextfield(
                            textAlign: TextAlign.start,
                            prefixIcon: Icon(
                              Icons.phone_iphone_outlined,
                              color: Color(0xffC33235),
                            ),
                            KeyboardType: TextInputType.number,
                            controller: _PhoneNumber,
                            hintText: "03xxxxxxxx",
                            labelText: "03xxxxxxxx"),
                        SizedBox(
                          height: 15.0,
                        ),
                        SizedBox(
                          width: scwidth * 0.88,
                          height: scheight * 0.2 / 3,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Otp_Screen()),
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
                          height: 50.0,
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
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 100.0,
                            ),
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
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
