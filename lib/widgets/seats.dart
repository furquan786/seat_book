// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

var totalAmount = 0;

class Seats extends StatefulWidget {
  bool isSelected;
  bool isReserved;
  Seats({
    required this.isReserved,
    this.isSelected = false,
  });

  @override
  State<Seats> createState() => _SeatsState();
}

class _SeatsState extends State<Seats> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isReserved
          ? () {}
          : () {
              setState(() {
                widget.isSelected = !widget.isSelected;
                if (widget.isSelected) {
                  totalAmount += 152;
                } else {
                  totalAmount -= 152;
                }
              });
            },
      child: Container(
        height: 28,
        width: 28,
        decoration: BoxDecoration(
          color: widget.isReserved
              ? Colors.red
              : widget.isSelected
                  ? Colors.orange
                  : Colors.green,
          borderRadius: BorderRadius.all(
            Radius.circular(8.2),
          ),
          border: Border.all(
            color: Colors.white30,
          ),
        ),
      ),
    );
    ;
  }
}
