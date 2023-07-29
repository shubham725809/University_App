import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SemesterOneSheet extends StatefulWidget {
  @override
  _SemesterOneSheetState createState() => _SemesterOneSheetState();
}

class _SemesterOneSheetState extends State<SemesterOneSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Semester 1"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        // title: Text(title),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: Container(
        height: 700,
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              "Bachelor of Technology (Computer Science And Engineering)"
                  .toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(children: const [
              Text(
                "Student Name:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 7,
              ),
              Text("Priyanka Kachhawaha"),
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(children: const [
              Text(
                "Father Name:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 7,
              ),
              Text("Mr. Karnidan Kachhawaha"),
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(children: const [
              Text(
                "Mother Name:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 7,
              ),
              Text("Koshalya Kachhawaha"),
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(children: const [
              Text(
                "Examination Held:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 7,
              ),
              Text("June 2021"),
            ]),
            const SizedBox(
              height: 20,
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
                      0: FractionColumnWidth(0.12),
                      1: FractionColumnWidth(0.28),
                      2: FractionColumnWidth(0.11),
                      3: FractionColumnWidth(0.11),
                    },
                    children: [
                      buildRow(
                        ['Course Code', 'Course Title', 'Grade', 'Grade Point'],
                        isHeader: true,
                      ),
                      buildRow(
                        ['SKL17', 'Coding Skills', 'A', '9'],
                      ),
                      buildRow(
                        ['SKL17', 'Ordinary Diffeerential Equation', 'B+', '8'],
                      ),
                      buildRow(
                        ['SKL17', 'Advance Programming', 'B+', '8'],
                      ),
                      buildRow(
                        ['SKL17', 'Fundamentals of Digital Logic', 'A+', '10'],
                      ),
                      buildRow(
                        ['SKL17', 'Joy Of Engineering', 'A', '9'],
                      ),
                      buildRow(
                        ['SKL17', 'Linear Algebra', 'A+', '10'],
                      ),
                      buildRow(
                        ['SKL17', 'Engineering Graphics', 'B', '7'],
                      ),
                      buildRow(
                        ['SKL17', 'Discrete Mathematics', 'A', '9'],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Text(
                      "semester grade point average(Sgpa) : ${8.79}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Text(
                      "cumulative grade point average(cgpa) : ${8.2}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Text(
                      "Date : June 21",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
        children: cells.map((cell) {
      final style = TextStyle(
        fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        fontSize: isHeader ? 15 : 14,
      );
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            cell,
            style: style,
          ),
        ),
      );
    }).toList());
