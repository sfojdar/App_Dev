import 'package:flutter/material.dart';
import 'package:quiz_app/data/sample_q.dart';
import 'package:quiz_app/questions.dart';
import 'background.dart';
import 'package:quiz_app/result.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State<Screen> createState() {
    return _ScreenState();
  }
}

class _ScreenState extends State<Screen> {
  List<String> selectedAns = [];
  var current_screen = "Start_Screen";
  void switch_screen() {
    setState(() {
      current_screen = "Questions_Screen";
    });
  }

  void selectAns(String answer) {
    selectedAns.add(answer);
    if (selectedAns.length == questions.length) {
      setState(() {
        current_screen = "results-screen";
      });
    }
  }

  void restart_quiz() {
    setState(() {
      selectedAns = [];
      current_screen = "Start_Screen";
    });
  }

  @override
  Widget build(context) {
    Widget shown_screen = background(switch_screen, 1.0);
    if (current_screen == 'Questions_Screen') {
      shown_screen = Questions(selectAns);
    }

    if (current_screen == 'results-screen') {
      shown_screen = result_screen(selectedAns,restart_quiz);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.amber,
                Colors.amber,
              ],
            ),
          ),
          child: shown_screen,
        ),
      ),
    );
  }
}
