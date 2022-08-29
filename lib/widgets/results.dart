import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final String value;
  const Results({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text(value, style: const TextStyle(fontSize: 30)),
    );
  }
}
