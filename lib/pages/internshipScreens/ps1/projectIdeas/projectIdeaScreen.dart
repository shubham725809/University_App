import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'App_Development/app_content_titles.dart';
import 'App_Development/app_ideaScreen.dart';

class AssignmentCourses {
  final String courseName;

  const AssignmentCourses({
    required this.courseName,
  });
}

class ProjectIdeaContentScreen extends StatefulWidget {
  const ProjectIdeaContentScreen({super.key});

  @override
  State<ProjectIdeaContentScreen> createState() => _InternshipInfoScreenState();
}

class _InternshipInfoScreenState extends State<ProjectIdeaContentScreen> {
  List<AssignmentCourses> coursesList = [
    const AssignmentCourses(
      courseName: 'App Development',
    ),
    const AssignmentCourses(
      courseName: 'Web Development',
    ),
    const AssignmentCourses(
      courseName: 'Machine Learning',
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
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.grey,
                  width: 0.2,
                ),

                borderRadius: BorderRadius.circular(5.0), //
              ),
              child: ListTile(
                title: Text(courses.courseName),
                trailing: const Icon(Icons.wb_incandescent_sharp),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AppDevelopmentTitles(),
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
