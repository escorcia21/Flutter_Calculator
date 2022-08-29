import 'package:calculator/widgets/calculator_button.dart';
import 'package:calculator/widgets/math_results.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/calculator_controller.dart';

class CalculatorScreen extends StatelessWidget {
  final calculatorCtrl = Get.put(CalculatorController());

  @override
  Widget build(Object context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            MathResults(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClaculatorButton(
                  onPressed: calculatorCtrl.clearAll,
                  text: 'AC',
                ),
                ClaculatorButton(
                  onPressed: calculatorCtrl.clear,
                  text: 'C',
                ),
                ClaculatorButton(
                  onPressed: calculatorCtrl.delete,
                  text: 'del',
                ),
                ClaculatorButton(
                  onPressed: calculatorCtrl.divide,
                  text: '/',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClaculatorButton(
                  onPressed: () => calculatorCtrl.addNumber('7'),
                  text: '7',
                ),
                ClaculatorButton(
                  onPressed: () => calculatorCtrl.addNumber('8'),
                  text: '8',
                ),
                ClaculatorButton(
                  onPressed: () => calculatorCtrl.addNumber('9'),
                  text: '9',
                ),
                ClaculatorButton(
                  onPressed: calculatorCtrl.multiply,
                  text: 'x',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClaculatorButton(
                  onPressed: () => calculatorCtrl.addNumber('4'),
                  text: '4',
                ),
                ClaculatorButton(
                  onPressed: () => calculatorCtrl.addNumber('5'),
                  text: '5',
                ),
                ClaculatorButton(
                  onPressed: () => calculatorCtrl.addNumber('6'),
                  text: '6',
                ),
                ClaculatorButton(
                  onPressed: calculatorCtrl.subtract,
                  text: '-',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClaculatorButton(
                  onPressed: () => calculatorCtrl.addNumber('1'),
                  text: '1',
                ),
                ClaculatorButton(
                  onPressed: () => calculatorCtrl.addNumber('2'),
                  text: '2',
                ),
                ClaculatorButton(
                  onPressed: () => calculatorCtrl.addNumber('3'),
                  text: '3',
                ),
                ClaculatorButton(
                  onPressed: calculatorCtrl.add,
                  text: '+',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClaculatorButton(
                  onPressed: calculatorCtrl.negative,
                  text: '+/-',
                ),
                ClaculatorButton(
                  onPressed: () => calculatorCtrl.addNumber('0'),
                  text: '0',
                ),
                ClaculatorButton(
                  onPressed: () => calculatorCtrl.addDot('.'),
                  text: '.',
                ),
                ClaculatorButton(
                  onPressed: calculatorCtrl.operate,
                  text: '=',
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
