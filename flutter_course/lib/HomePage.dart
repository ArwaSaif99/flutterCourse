import 'package:flutter/material.dart';
import 'package:flutter_course/widgets/button.dart';
import 'package:flutter_course/widgets/dialog.dart';
import 'package:flutter_course/widgets/imageContainer.dart';
import 'widgets/textField.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 27, left: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            imageContainer(context, 'images/3.png'),
                            imageContainer(context, 'images/4.png'),
                            imageContainer(context, 'images/3.png'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          height: MediaQuery.of(context).size.height * 0.18,
                          child: Image.asset(
                            'images/1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'خليك_في_البيت#',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      color: Colors.pink),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: textField(
                    context,
                    ' الخاص بك id ادخل رقم ',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                        onPressed: () {
                          dialog(context, 'id رقم الهاتف', 'ادخل رقم الهاتف',
                              'ارسل رقم ');
                        },
                        child: Text(
                          ' الخاص بك id هل نسيت رقم  ',
                          style: TextStyle(color: Colors.blue[600]),
                        )),
                    FlatButton(
                      child: Text(
                        ' الخاص بك id انشاء رقم ',
                        style: TextStyle(color: Colors.blue[600]),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) => Container(
                                  height: 60,
                                  width: 70,
                                  child: AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    title: Column(
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40)),
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.close,
                                                    color: Colors.white,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              )
                                            ]),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: 170,
                                                height: 60,
                                                child: textField(
                                                  context,
                                                  '  ادخل الاسم رباعي ',
                                                )),
                                            SizedBox(width: 15),
                                            Expanded(
                                              child: Text(
                                                'اسم الممتحن',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: 170,
                                                height: 60,
                                                child: textField(
                                                  context,
                                                  '  ادخل رقم الهاتف ',
                                                )),
                                            SizedBox(width: 15),
                                            Expanded(
                                              child: Text(
                                                '  رقم الهاتف',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        button(context, ' ID انشاء رقم ')
                                      ],
                                    ),
                                  ),
                                ));
                      },
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  color: Colors.pink,
                ),
              ],
            )
          ],
        ));
  }
}
