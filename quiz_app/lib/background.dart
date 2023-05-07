import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class background extends StatelessWidget {
  background(this.start_quiz, this.opacity, {super.key});
  var opacity;
  final void Function() start_quiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: opacity,
            child: Image.asset(
              "assets/images/quiz-logo.png",
              width: 300,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            "   Learn flutter in a simple way!",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
              onPressed: start_quiz,
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.black, width: 2)),
              child: const Text(
                "Start Quiz",
                style: TextStyle(color: Colors.black, fontSize: 24),
              ))
        ],
      ),
    );
  }
}
