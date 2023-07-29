import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:maitri/pages/viewResult/result/semester1/semesterOne.dart';

class Semester {
  final String semesterName;
  final String marks;

  const Semester({
    required this.semesterName,
    required this.marks,
  });
}

class SemesterScreen extends StatefulWidget {
  const SemesterScreen({super.key});

  @override
  State<SemesterScreen> createState() => _SemesterScreenState();
}

class _SemesterScreenState extends State<SemesterScreen> {
  List<Semester> semesters = [
    const Semester(
      semesterName: 'Coding Skills',
      marks: '92',
    ),
    const Semester(
      semesterName: 'Ordinary Diffeerential Equation',
      marks: '86',
    ),
    const Semester(
      semesterName: 'Advance Programming',
      marks: '80',
    ),
    const Semester(
      semesterName: 'Fundamentals of Digital Logic',
      marks: '94',
    ),
    const Semester(
      semesterName: 'Joy Of Engineering',
      marks: '86',
    ),
    const Semester(
      semesterName: 'Linear Algebra',
      marks: '80',
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
        // title: Text(title),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: ListView.builder(
          padding: const EdgeInsets.all(20.0),
          itemCount: semesters.length,
          itemBuilder: (context, index) {
            final semester = semesters[index];
            return Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.grey,
                  width: 0.2,
                ),

                borderRadius: BorderRadius.circular(5.0), //
              ),
              child: ListTile(
                title: Text(semester.semesterName),
                subtitle: Text('Marks: ${semester.marks}'),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SemesterOne(semesters: semester),
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
