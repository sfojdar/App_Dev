import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  Answers(this.ans_text, this.ontap, {super.key});
  final String ans_text;
  final void Function() ontap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 3),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      child: Text(
        ans_text,
        style: TextStyle(
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
