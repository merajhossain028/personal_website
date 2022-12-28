import 'package:flutter/material.dart';

class DemoWidget extends StatelessWidget {
  final String text;
  const DemoWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.blue,
      child: Text(text),
    );
  }
}
