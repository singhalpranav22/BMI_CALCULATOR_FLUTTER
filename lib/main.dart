import 'package:flutter/material.dart';
import 'inputpage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0C22),
        scaffoldBackgroundColor: Color(0xFF0A0C22),
      ),
      home: InputPage(),
    );
  }
}

