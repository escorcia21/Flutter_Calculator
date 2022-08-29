import 'package:calculator/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: const Color.fromARGB(32, 129, 129, 129),
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: SafeArea(child: CalculatorScreen()));
  }
}
