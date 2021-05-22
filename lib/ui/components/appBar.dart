import 'package:flutter/material.dart';

Widget appBar({required String title, required Widget right}) {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 30.0,
                alignment: Alignment.center,
                height: 10.0,
                decoration: new BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                '$title',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                  color: Colors.black45,
                ),
              )
            ],
          ),
          right
        ],
      ),
    ),
  );
}
