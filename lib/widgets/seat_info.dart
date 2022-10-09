// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget seatInfo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Free"),
      Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
      ),
      SizedBox(
        width: 14,
      ),
      Text("Reserved"),
      Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      ),
      SizedBox(
        width: 14,
      ),
      Text("Selected"),
      Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
      ),
    ],
  );
}
