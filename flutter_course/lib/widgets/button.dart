import 'package:flutter/material.dart';

Widget button(BuildContext context, String text) {
  return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: Colors.green,
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ));
}
