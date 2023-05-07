import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/q_number.dart';

class summary_data extends StatelessWidget {
  summary_data(this.summarydata, {super.key});
  List<Map<String, Object>> summarydata = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map(
            (e) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    QuestionIdentifier(
                        questionIndex: e["question_number"] as int, e),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e["quest"] as String,
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(e["selected_ans"] as String,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 246, 247, 246),
                              )),
                          Text(e["real_ans"] as String,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 2, 97, 8),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
