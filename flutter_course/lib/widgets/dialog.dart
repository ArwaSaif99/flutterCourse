import 'package:flutter/material.dart';
import 'package:flutter_course/widgets/button.dart';
import 'package:flutter_course/widgets/textField.dart';

dialog(BuildContext context, String text, hintText, String buttonTitle) {
  showDialog(
      context: context,
      builder: (_) => Container(
            height: 60,
            width: 70,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: Column(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(40)),
                          child: IconButton(
                            icon: Icon(Icons.close, color: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 170,
                          height: 60,
                          child: textField(
                            context,
                            hintText,
                          )),
                      SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          text,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  button(context, buttonTitle)
                ],
              ),
            ),
          ));
}
