import 'package:flutter/material.dart';
import 'package:maitri/pages/assignmentScreen/assignmentPage.dart';
import 'package:maitri/pages/assignmentScreen/assignmentScreen.dart';
import 'package:maitri/pages/timeTable/timeTableScreen.dart';

import '../semOverviewScreens/semOverviewContent.dart';
import '../semOverviewScreens/semOverviewScreen.dart';
import '../syllabusScreen/syllabusScreen.dart';
import '../timeTable/sortablepage.dart';

class AcademicContentScreen extends StatefulWidget {
  const AcademicContentScreen({super.key});

  @override
  State<AcademicContentScreen> createState() => _AcademicContentScreenState();
}

class _AcademicContentScreenState extends State<AcademicContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 45,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const SemOverviewContentScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    side: const BorderSide(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    backgroundColor: Color.fromARGB(255, 60, 42, 78),
                  ),
                  child: const Text(
                    "Sem-Overview",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const SyllabusScreenContent()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    side: const BorderSide(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    backgroundColor: Color.fromARGB(255, 60, 42, 78),
                  ),
                  child: const Text(
                    "Syllabus",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TimeTableScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    side: const BorderSide(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    backgroundColor: Color.fromARGB(255, 60, 42, 78),
                  ),
                  child: const Text(
                    "Time Table",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    side: const BorderSide(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    backgroundColor: Color.fromARGB(255, 60, 42, 78),
                  ),
                  child: const Text(
                    "PPTs",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AssignmentScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    side: const BorderSide(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    backgroundColor: Color.fromARGB(255, 60, 42, 78),
                  ),
                  child: const Text(
                    "Assignments",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
