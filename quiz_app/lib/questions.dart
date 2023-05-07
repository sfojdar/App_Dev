import 'package:flutter/material.dart';
import 'package:quiz_app/ans.dart';
import 'package:quiz_app/data/sample_q.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions(this.onselect, {super.key});
  final void Function(String ans) onselect;
  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var counter = 0;
  void nextq(String answer) {
    widget.onselect(answer);
    setState(() {
      counter += 1;
    });
  }

  @override
  Widget build(context) {
    var currentQuestion = questions[counter];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.q,
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.shuffled_Ans().map(
                  (e) => Answers(e, () {
                    nextq(e);
                  }),
                ),
          ],
        ),
      ),
    );
  }
}
