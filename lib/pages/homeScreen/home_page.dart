import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:maitri/pages/facultyScreen/facultyList.dart';
import 'package:maitri/pages/academicScreen/Academic_Tabbar.dart';

import '../../design/navigatorDrawer.dart';
import '../QuizScreens/quizHomeScreen.dart';
import '../assignmentScreen/assignmentScreen.dart';
import '../internshipScreens/internshipInfoScreen.dart';
import '../placementScreens/placStartScr.dart';
import '../viewResult/resultScreen/viewResult/result_screen.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("DashBoard"),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      drawer: const NavigationDrawer(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Priyanka Kachhawaha",
                          style: Theme.of(context).textTheme.headline5),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("Btech 2020-2024",
                          style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                  const SizedBox(
                      width: 120,
                      child: Image(image: AssetImage("assets/bmu.png"))),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TabBarWidget()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(140, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 164, 43, 134),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          LineAwesomeIcons.info,
                          color: Colors.pinkAccent,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Academic Info",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                      //
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AssignmentScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(140, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 164, 43, 134),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          LineAwesomeIcons.clipboard_with_check,
                          color: Colors.pinkAccent,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Assignments",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                      //
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FacultyList()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(140, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 164, 43, 134),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          LineAwesomeIcons.chalkboard_teacher,
                          color: Colors.pinkAccent,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Faculty Info",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                      //
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PlacementStartScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(140, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 164, 43, 134),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          LineAwesomeIcons.object_group_1,
                          color: Colors.pinkAccent,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Placement",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                      //
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResultScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(140, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 164, 43, 134),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          LineAwesomeIcons.clipboard_1,
                          color: Colors.pinkAccent,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "View Score",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                      //
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const InternshipInfoScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(140, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 164, 43, 134),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          LineAwesomeIcons.laptop_code,
                          color: Colors.pinkAccent,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Internships",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                      //
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuizHomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(140, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 164, 43, 134),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.checklist_rounded,
                          color: Colors.pinkAccent,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Quiz",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                      //
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(140, 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 164, 43, 134),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          LineAwesomeIcons.pen,
                          color: Colors.pinkAccent,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Complaints",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                      //
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
