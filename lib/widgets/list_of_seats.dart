import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seat_booking/pages/home.dart';
import 'package:seat_booking/widgets/seat.dart';

TotalAmount myamount = new TotalAmount();
SeatsLayout myseat = new SeatsLayout();

class ListSeat extends StatefulWidget {
  Function() callback;
  ListSeat({required this.callback});

  @override
  State<ListSeat> createState() => _ListSeatState();
}

class _ListSeatState extends State<ListSeat> {
  Seat s1 = new Seat(152);
  @override
  Widget build(BuildContext context) {
    return seats(() {
      setState(() {
        s1.changeStatus();
        myamount.getamount();
        widget.callback();
      });
    }, s1);
  }
}
