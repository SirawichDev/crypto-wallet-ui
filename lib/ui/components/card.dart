import 'package:flutter/material.dart';

Widget card(
    {double width = double.infinity,
    double padding = 20,
    required Widget child}) {
  return Container(
    width: width,
    padding: EdgeInsets.all(padding),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            offset: Offset(2, 2), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: child,
  );
}
