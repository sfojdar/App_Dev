import "package:flutter/material.dart";
import 'package:first_app/rolled_dice.dart';

class GradientConstructor extends StatelessWidget {
  const GradientConstructor(this.one, this.two, {super.key});
  final Color one;
  final Color two;
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            one,
            two,
          ],
        ),
      ),
      child:const Center(
          child: rollerdice()
          ),
    );
  }
}
