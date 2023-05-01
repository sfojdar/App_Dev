import 'package:flutter/material.dart';
import 'dart:math';
import 'package:first_app/text_style.dart';

class rollerdice extends StatefulWidget {
  const rollerdice({super.key});
  @override
  State<rollerdice> createState() {
    return _rollerdice();
  }
}

class _rollerdice extends State<rollerdice> {
  var number = 1;
  var number1 = 6;
  void rolldice() {
    setState(() {
      number = Random().nextInt(6) + 1;
      number1 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TextStyle1("Winner is:"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text("Player 1",style:TextStyle(color: Colors.white,fontSize: 25)),
            Image.asset("assets/images/dice-$number.png", width: 200),
          ]
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text("Roll Dice"),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text("Player 2",style:TextStyle(color: Colors.white,fontSize: 25)),
            Image.asset("assets/images/dice-$number1.png", width: 200),
          ]
        ),
      ],
    );
  }
}
