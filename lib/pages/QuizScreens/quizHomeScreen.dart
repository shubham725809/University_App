import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../homeScreen/home.dart';
import 'quizHomeContent.dart';

class QuizHomeScreen extends StatelessWidget {
  // final Product product;

  const QuizHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text(
          "Quiz",
        ),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: GridView.builder(
        itemCount: body.length,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 8.0, crossAxisSpacing: 8.0),
        itemBuilder: (context, index) {
          final Map<String, dynamic> singleitems = body[index];
          return QuizHomeContent(
            singleitems: singleitems,
            color: colors[index % colors.length],
          );
        },
      ),
    );
    // It provide us total height and width
  }
}

List<Map<String, dynamic>> body = [
  {"title": "Opps", "subtitle": "10 minutes", "icon": Icons.code},
  {"title": "DBMS", "subtitle": "15 minutes", "icon": Icons.storage},
  {"title": "Java", "subtitle": "20 minutes", "icon": Icons.android},
  {"title": "Python", "subtitle": "25 minutes", "icon": Icons.code},
  {"title": "DSA", "subtitle": "30 minutes", "icon": Icons.computer},
  {"title": "WebD", "subtitle": "35 minutes", "icon": Icons.web},
];
