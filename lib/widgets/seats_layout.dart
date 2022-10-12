// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seat_booking/widgets/seats.dart';

class MySeats {
  Widget seatslayout1(bool isReserved) {
    return Container(
      width: 170,
      // color: Colors.re d,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Seats(
            isReserved: isReserved,
          ),
          Seats(
            isReserved: isReserved,
          ),
          Seats(
            isReserved: isReserved,
          ),
          Seats(
            isReserved: isReserved,
          ),
        ],
      ),
    );
  }

  Widget seatslayout2(bool isReserved) {
    return Container(
      width: 130,
      // color: Colors.red,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Seats(
            isReserved: isReserved,
          ),
          Seats(
            isReserved: isReserved,
          ),
          Seats(
            isReserved: isReserved,
          ),
        ],
      ),
    );
  }

  Widget seatslayout3(bool isReserved) {
    return Container(
      width: 130,
      // color: Colors.red,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(left: 5),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Seats(
            isReserved: isReserved,
          ),
          SizedBox(
            width: 8,
          ),
          Seats(
            isReserved: isReserved,
          ),
        ],
      ),
    );
  }
}
