// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RowLine extends StatelessWidget {
  const RowLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      constraints: BoxConstraints(
        minHeight: double.minPositive + 428,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("A"),
          Text("B"),
          Text("C"),
          Text("D"),
          Text("E"),
          Text("F"),
          Text("G"),
          Text("H"),
          Text("I"),
        ],
      ),
    );
  }
}
