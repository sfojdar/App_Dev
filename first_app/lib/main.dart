import "package:flutter/material.dart";
import 'package:first_app/gradient_container.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientConstructor(Color.fromARGB(255, 3, 47, 83),Color.fromARGB(255, 3, 47, 83)),
      ),
    ),
  );
}