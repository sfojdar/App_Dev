import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
    this.data, {
    super.key,
    required this.questionIndex,
  });

  final int questionIndex;
  final Map<String, Object> data;
  bool correct(data){
    return data["real_ans"] == data["selected_ans"];
  }

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: correct(data)
            ? Color.fromARGB(255, 28, 239, 4)
            : Color.fromARGB(255, 242, 8, 8),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
