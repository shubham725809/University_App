import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:maitri/pages/semOverviewScreens/semOverviewContent.dart';

class AssignmentCourses {
  final String courseName;

  const AssignmentCourses({
    required this.courseName,
  });
}

class SemOverviewScreen extends StatefulWidget {
  const SemOverviewScreen({super.key});

  @override
  State<SemOverviewScreen> createState() => _SemOverviewScreenState();
}

class _SemOverviewScreenState extends State<SemOverviewScreen> {
  List<AssignmentCourses> coursesList = [
    const AssignmentCourses(courseName: 'I'),
    // const AssignmentCourses(courseName: 'II'),
    // const AssignmentCourses(courseName: 'III'),
    // const AssignmentCourses(courseName: 'IV'),
    // const AssignmentCourses(courseName: 'V'),
    // const AssignmentCourses(courseName: 'VI'),
    // const AssignmentCourses(courseName: 'VII'),
    // const AssignmentCourses(courseName: 'VIII'),
  ];
  Future refresh() async {
    setState(() {});
  }

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
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SemOverviewContentScreen(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
