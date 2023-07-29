import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AssignmentCourses {
  final String courseName;
  final String sessions;
  final String courseCode;
  final String facultyName;

  const AssignmentCourses({
    required this.courseName,
    required this.sessions,
    required this.courseCode,
    required this.facultyName,
  });
}

class SemOverviewContentScreen extends StatefulWidget {
  const SemOverviewContentScreen({super.key});

  @override
  State<SemOverviewContentScreen> createState() =>
      _SemOverviewContentScreenState();
}

class _SemOverviewContentScreenState extends State<SemOverviewContentScreen> {
  List<AssignmentCourses> coursesList = [
    const AssignmentCourses(
      courseName: 'Big Data Analytics',
      sessions: '80',
      facultyName: 'Dr. Yogesh Gupta',
      courseCode: '[CSE3712]',
    ),
    const AssignmentCourses(
      courseName: 'Deep Learning',
      sessions: '60',
      facultyName: 'Dr. Soharab Hossain Shaikh, Akash Sarswat',
      courseCode: '[CSE4007]',
    ),
    const AssignmentCourses(
      courseName: 'Major Project',
      sessions: '40',
      facultyName: 'Pradeep Kumar Arya, Anantha Rao',
      courseCode: '[PRJ4903]',
    ),
    const AssignmentCourses(
      courseName: 'Excel : Novice to Competent',
      sessions: '60',
      facultyName: 'Suchitra Rajput Chauhan',
      courseCode: '[SKL3706]',
    ),
    const AssignmentCourses(
      courseName: 'Cloud Computing',
      sessions: '60',
      facultyName: 'Pradeep Kumar Arya',
      courseCode: '[CSE3021]',
    ),
    const AssignmentCourses(
      courseName: 'System Approach',
      sessions: '20',
      facultyName: 'Sushil Chandra',
      courseCode: '[PSP3712]',
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
        title: const Text("Semester 1"),
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
            return Container(
              height: 110,
              child: Card(
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.grey,
                    width: 0.2,
                  ),
                ),
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '${courses.courseName}  ${courses.courseCode}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Sessions -  ${courses.sessions}\nFaculty - ${courses.facultyName}',
                    ),
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
