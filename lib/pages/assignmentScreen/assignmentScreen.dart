import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'assignmentFilePicker.dart';

class AssignmentCourses {
  final String courseName;
  final String status;

  const AssignmentCourses({
    required this.courseName,
    required this.status,
  });
}

class AssignmentScreen extends StatefulWidget {
  const AssignmentScreen({super.key});

  @override
  State<AssignmentScreen> createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  List<AssignmentCourses> coursesList = [
    const AssignmentCourses(
      courseName: 'Coding Skills',
      status: 'Missing',
    ),
    const AssignmentCourses(
      courseName: 'Ordinary Diffeerential Equation',
      status: 'Completed',
    ),
    const AssignmentCourses(
      courseName: 'Advance Programming',
      status: 'Completed',
    ),
    const AssignmentCourses(
      courseName: 'Fundamentals of Digital Logic',
      status: 'Completed',
    ),
    const AssignmentCourses(
      courseName: 'Joy Of Engineering',
      status: 'Missing',
    ),
    const AssignmentCourses(
      courseName: 'Linear Algebra',
      status: 'Completed',
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
        title: const Text("Semester 6"),
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
                borderRadius: BorderRadius.circular(5.0), //<-- SEE HERE
              ),
              child: ListTile(
                title: Text(courses.courseName),
                subtitle: Text('Status: ${courses.status}'),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AssignmentUploadPage(),
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

/*
class SearchFaculty extends SearchDelegate {
  List<String> searchResults = [
    'wd',
    'atul',
    'india',
  ];
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(
          Icons.arrow_back,
        ),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear),
        ),
      ];

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 64),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
*/
