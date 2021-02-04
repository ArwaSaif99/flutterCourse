import 'package:flutter/material.dart';

Widget textField(BuildContext context, String hintText) {
  return TextField(
    textDirection: TextDirection.rtl,
    textAlign: TextAlign.right,
    decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))),
  );
}
