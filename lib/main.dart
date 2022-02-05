import 'package:flutter/material.dart';
import 'package:project2nd/bmi-result-screen.dart';



import 'bim-screen.dart';
import 'messenger-screen.dart';

void main()
{
  runApp(MyApp());
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{
  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:bmiScreen(),
    );
  }
}