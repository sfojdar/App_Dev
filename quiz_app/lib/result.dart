import 'package:flutter/material.dart';
import 'package:quiz_app/data/sample_q.dart';
import 'package:quiz_app/summary_data.dart';
import 'package:google_fonts/google_fonts.dart';

class result_screen extends StatelessWidget {
  result_screen(this.selectedans, this.restart, {super.key});
  final void Function() restart;
  List<String> selectedans;
  List<Map<String, Object>> quiz_summary() {
    List<Map<String, Object>> summary = [];
    for (int i = 0; i < selectedans.length; i++) {
      summary.add(
        {
          "question_number": i,
          "quest": questions[i].q,
          "real_ans": questions[i].ans[0],
          "selected_ans": selectedans[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    var summary = quiz_summary();
    var total_q = selectedans.length;
    var correct_num_ans = summary.where(
      (element) {
        return element["real_ans"] == element["selected_ans"];
      },
    ).length;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $correct_num_ans out of $total_q correctly.",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            summary_data(summary),
            SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: restart,
              style: TextButton.styleFrom(
                  side: const BorderSide(color: Colors.black, width: 2)),
              icon: const Icon(
                Icons.refresh,
                color: Colors.black,
              ),
              label: const Text(
                'Restart Quiz!',
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
