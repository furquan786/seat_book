import 'package:flutter/material.dart';
import 'package:seat_booking/pages/home.dart';
import 'package:seat_booking/widgets/theme_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    int total = 0;
    return MaterialApp(
      home: SeatsLayout(),
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
    );
  }
}
