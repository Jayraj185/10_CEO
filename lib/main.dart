import 'package:ceo/DataScreen.dart';
import 'package:ceo/HomeScreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomeScreen(),
        'Data' : (context) =>DataScreen(),
      },
    ),
  );
}