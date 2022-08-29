import 'package:calculator/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'results.dart';
import 'line_separator.dart';

class MathResults extends StatelessWidget {
  final calculatorCtrl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Results(value: '${calculatorCtrl.firstNumber}'),
            Results(value: '${calculatorCtrl.operator}'),
            Results(value: '${calculatorCtrl.secondNumber}'),
            const LineSeparator(),
            Results(value: '${calculatorCtrl.result}'),
          ],
        ));
  }
}
