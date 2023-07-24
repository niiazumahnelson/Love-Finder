import 'package:flutter/material.dart';
import 'Screens/calculator_screen.dart';

void main () {
  runApp(const LoveCalculator());
}

class LoveCalculator extends StatelessWidget {
  const LoveCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
        ),
      ),
      home: const CalculatorScreen(),
    );
  }
}
