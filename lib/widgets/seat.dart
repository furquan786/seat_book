// ignore_for_file: prefer_const_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';

Widget seats(VoidCallback onpress, Seat s) {
  return InkWell(
    onTap: onpress,
    child: Container(
      height: 28,
      width: 28,
      decoration: BoxDecoration(
        color: s.isSelected ? Colors.orange : Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(8.2),
        ),
        border: Border.all(
          color: Colors.white30,
        ),
      ),
    ),
  );
}

int totalCost = 0;

class Seat {
  late int amount;
  late bool isSelected;
  Seat(
    int amount, {
    bool isSelected = false,
  }) {
    this.amount = amount;
    this.isSelected = isSelected;
  }
  changeStatus() {
    if (!isSelected) {
      totalCost += 152;
    } else {
      totalCost -= 152;
    }
    isSelected = !isSelected;
    // this.num = ++num;
  }
}

class TotalAmount {
  var amount = 0;
  void getamount() {
    amount = totalCost;
  }
}
