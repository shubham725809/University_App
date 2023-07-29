import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class User {
  final String topicName;

  const User({
    required this.topicName,
  });
}

class AlgorithmsScreen extends StatefulWidget {
  const AlgorithmsScreen({super.key});

  @override
  State<AlgorithmsScreen> createState() => _FacultyListState();
}

class _FacultyListState extends State<AlgorithmsScreen> {
  List<User> users = [
    const User(
      topicName: 'Pattern Searching',
    ),
    const User(
      topicName: 'Mathematical Algorithms',
    ),
    const User(
      topicName: 'Bitwise Algorithms',
    ),
    const User(
      topicName: 'Searching Algorithm',
    ),
    const User(
      topicName: 'Sorting Algorithm',
    ),
    const User(
      topicName: 'Divide and Conquer Algorithm',
    ),
    const User(
      topicName: 'Recursion',
    ),
    const User(
      topicName: 'Backtracking Algorithm',
    ),
    const User(
      topicName: 'Dynamic Programming',
    ),
  ];
  Future refresh() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: refresh,
        child: ListView.builder(
          padding: const EdgeInsets.all(15.0),
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];

            return Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.grey,
                  width: 0.4,
                ),

                borderRadius: BorderRadius.circular(5.0), //
              ),
              child: ListTile(
                title: Text(user.topicName),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => FacultyPage(user: user),
                  // ),
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
