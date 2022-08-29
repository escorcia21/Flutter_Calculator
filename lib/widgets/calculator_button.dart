import 'package:calculator/theme/theme.dart';
import 'package:flutter/material.dart';

class ClaculatorButton extends StatelessWidget {
  final bool big;
  final Function onPressed;
  final String text;

  const ClaculatorButton({
    Key? key,
    this.big = false,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  isOperator(String text) {
    return text == '+' ||
        text == '-' ||
        text == 'x' ||
        text == '/' ||
        text == '=';
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = TextButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
    );

    return Expanded(
        child: Container(
            height: 65,
            padding: const EdgeInsets.only(bottom: 10, right: 5, left: 5),
            child: ElevatedButton(
              style: textStyle,
              child: Center(child: Text(text)),
              onPressed: () => onPressed(),
            )));
  }
}
