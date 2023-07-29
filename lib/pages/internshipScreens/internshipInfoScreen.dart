import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'ps1/ps1InfoPage.dart';

class AssignmentCourses {
  final String courseName;

  const AssignmentCourses({
    required this.courseName,
  });
}

class InternshipInfoScreen extends StatefulWidget {
  const InternshipInfoScreen({super.key});

  @override
  State<InternshipInfoScreen> createState() => _InternshipInfoScreenState();
}

class _InternshipInfoScreenState extends State<InternshipInfoScreen> {
  List<AssignmentCourses> coursesList = [
    const AssignmentCourses(
      courseName: 'PS 1',
    ),
    const AssignmentCourses(
      courseName: 'PS 2',
    ),
    const AssignmentCourses(
      courseName: 'PS 3',
    ),
  ];
  Future refresh() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Internship Information"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: ListView.builder(
          padding: const EdgeInsets.all(20.0),
          itemCount: coursesList.length,
          itemBuilder: (context, index) {
            final courses = coursesList[index];
            return Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.grey,
                  width: 0.2,
                ),

                borderRadius: BorderRadius.circular(5.0), //
              ),
              child: ListTile(
                title: Text(courses.courseName),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PsOneScreen(),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
