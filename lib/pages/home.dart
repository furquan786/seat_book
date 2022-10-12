// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:seat_booking/widgets/seats.dart';
import 'package:seat_booking/widgets/row_number.dart';
import 'package:seat_booking/widgets/seat_info.dart';
import 'package:seat_booking/widgets/seats_layout.dart';

class SeatsLayout extends StatefulWidget {
  @override
  State<SeatsLayout> createState() => _SeatsLayoutState();
}

class _SeatsLayoutState extends State<SeatsLayout> {
  List<MySeats> obj = [];
  bool saveSelected = false;
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 11; i++) {
      obj.add(new MySeats());
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select your seat",
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 12.5,
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(600, 100),
                      topRight: Radius.elliptical(600, 100),
                      bottomLeft: Radius.elliptical(0, 0),
                      bottomRight: Radius.elliptical(0, 0)),
                  color: Colors.white,
                ),
                foregroundDecoration: BoxDecoration(),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RowLine(),
                  Container(
                    // color: Colors.red,
                    constraints: BoxConstraints(
                      minHeight: double.minPositive + 428,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        obj[0].seatslayout1(false),
                        obj[1].seatslayout1(false),
                        obj[2].seatslayout1(false),
                        obj[3].seatslayout1(true),
                        obj[4].seatslayout1(true),
                        obj[5].seatslayout1(false),
                        obj[6].seatslayout1(false),
                        obj[7].seatslayout1(true),
                        obj[8].seatslayout1(false),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    // color: Colors.red,
                    constraints: BoxConstraints(
                      minHeight: double.minPositive + 428,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        obj[0].seatslayout2(false),
                        obj[1].seatslayout2(false),
                        obj[2].seatslayout2(true),
                        obj[3].seatslayout2(true),
                        obj[4].seatslayout2(true),
                        obj[5].seatslayout2(false),
                        obj[6].seatslayout2(false),
                        obj[7].seatslayout2(true),
                        obj[8].seatslayout2(true),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    // color: Colors.red,
                    constraints: BoxConstraints(
                      minHeight: double.minPositive + 428,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        obj[0].seatslayout3(false),
                        obj[1].seatslayout3(false),
                        obj[2].seatslayout3(false),
                        obj[3].seatslayout3(false),
                        obj[4].seatslayout3(false),
                        obj[5].seatslayout3(false),
                        obj[6].seatslayout3(true),
                        obj[7].seatslayout3(true),
                        obj[8].seatslayout3(false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            seatInfo(),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide.none),
                        title: const Text(
                          "Success",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                            height: 1.5,
                          ),
                        ),
                        content: Text(
                          "Total Amount Rs: $totalAmount",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        actions: [
                          TextButton(
                            child: const Text(
                              "Ok",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.red,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 50,
                width: MediaQuery.of(context).size.width - 35,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Save",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
