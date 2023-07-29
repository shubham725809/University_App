import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../markSheet/semOneSheet.dart';
import '../../resultSemesterScreen.dart';

class SemesterOne extends StatelessWidget {
  final Semester semesters;

  const SemesterOne({
    Key? key,
    required this.semesters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Marks"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Marks Of ${semesters.semesterName}",
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Total Score: ${semesters.marks}",
                    style: const TextStyle(fontSize: 18)),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 436,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: <Widget>[
                      Table(
                        border: TableBorder.all(),
                        columnWidths: const {
                          0: FractionColumnWidth(0.20),
                          1: FractionColumnWidth(0.10),
                          2: FractionColumnWidth(0.10),
                        },
                        children: [
                          buildRow(
                            [
                              'Name',
                              'Marks',
                              'Weightage',
                            ],
                            isHeader: true,
                          ),
                          buildRow(
                            ['Mid Sem', '18/20', '18/20'],
                          ),
                          buildRow(
                            ['quiz1', '10/10', '10/10'],
                          ),
                          buildRow(
                            ['quiz2', '10/10', '10/10'],
                          ),
                          buildRow(
                            ['Project', '18/20', '18/20'],
                          ),
                          buildRow(
                            ['End Sem', '36/40', '36/40'],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
