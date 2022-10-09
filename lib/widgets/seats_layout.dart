// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seat_booking/widgets/list_of_seats.dart';
import 'package:seat_booking/widgets/seat.dart';

void lalittatti() {}

class MySeats {
  MySeats() {}
  Widget seatslayout1(Function() a) {
    return Container(
      width: 170,
      // color: Colors.red,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListSeat(
            callback: a,
          ),
          ListSeat(
            callback: a,
          ),
          ListSeat(
            callback: a,
          ),
          ListSeat(
            callback: a,
          ),
        ],
      ),
    );
  }

  Widget seatslayout2(Function() a) {
    return Container(
      width: 130,
      // color: Colors.red,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListSeat(
            callback: a,
          ),
          ListSeat(
            callback: a,
          ),
          ListSeat(
            callback: a,
          ),
        ],
      ),
    );
  }

  Widget seatslayout3(Function() a) {
    return Container(
      width: 130,
      // color: Colors.red,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(left: 5),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListSeat(
            callback: a,
          ),
          SizedBox(
            width: 8,
          ),
          ListSeat(
            callback: a,
          ),
        ],
      ),
    );
  }

  // Widget seatslayout4() {
  //   return Container(
  //     width: 140,
  //     color: Colors.red,
  //     margin: EdgeInsets.zero,
  //     padding: EdgeInsets.only(left: 5),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       children: [
  //         ListSeat(),
  //         ListSeat(),
  //         ListSeat(),
  //         ListSeat(),
  //         ListSeat(),
  //         ListSeat(),
  //         ListSeat(),
  //         ListSeat(),
  //         ListSeat(),
  //         ListSeat(),
  //         ListSeat(),
  //       ],
  //     ),
  //   );
  // }

}
