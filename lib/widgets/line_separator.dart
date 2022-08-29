import 'package:flutter/material.dart';

class LineSeparator extends StatelessWidget {
  const LineSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black,
      thickness: 1,
    );
  }
}
