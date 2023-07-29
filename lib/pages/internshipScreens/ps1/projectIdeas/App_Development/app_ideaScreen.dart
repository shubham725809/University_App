import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AssignmentCourses {
  final String courseName;

  const AssignmentCourses({
    required this.courseName,
  });
}

class AppDevelopmentIdeaScreen extends StatefulWidget {
  const AppDevelopmentIdeaScreen({super.key});

  @override
  State<AppDevelopmentIdeaScreen> createState() => _InternshipInfoScreenState();
}

class _InternshipInfoScreenState extends State<AppDevelopmentIdeaScreen> {
  List<AssignmentCourses> coursesList = [
    const AssignmentCourses(
      courseName: 'Flutter',
    ),
    const AssignmentCourses(
      courseName: 'React Native',
    ),
    const AssignmentCourses(
      courseName: 'Kotlin',
    ),
    const AssignmentCourses(
      courseName: 'Java',
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
        title: const Text("Project Ideas"),
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
              child: ListTile(
                title: Text(courses.courseName),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const PsOneScreen(),
                  //   ),
                  // );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
