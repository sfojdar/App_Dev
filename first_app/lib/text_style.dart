import "package:flutter/material.dart";

class TextStyle1 extends StatelessWidget {
  const TextStyle1(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 65,
        color: Colors.white,
      ),
    );
  }
}
