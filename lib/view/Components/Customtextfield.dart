// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_import, implementation_imports, unused_import, file_names, must_be_immutable, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class customtextfield extends StatelessWidget {
  final TextEditingController controller;
  String hintText;
  String labelText;
  var KeyboardType;
  var prefixIcon;
  var textAlign;

  customtextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.KeyboardType,
      required this.prefixIcon,
      required this.textAlign,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      keyboardType: KeyboardType,
      textAlign: textAlign,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF5F5F5),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5)),
          borderSide: BorderSide(width: 2, color: Color(0xff64D484)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5)),
          borderSide: BorderSide(width: 2, color: Color(0xff64D484)),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.normal,
        ),
        labelText: labelText,
        prefixIcon: prefixIcon,
        labelStyle: TextStyle(color: Color(0xffC33235)),
        hintMaxLines: 1,
      ),
    );
  }
}
