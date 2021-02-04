import 'package:flutter/material.dart';

Widget imageContainer(BuildContext context, String imageUrl) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.065,
    child: Image.asset(imageUrl, color: Colors.pink),
  );
}
