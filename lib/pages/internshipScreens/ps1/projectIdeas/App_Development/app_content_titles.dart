import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'app_design.dart';

class AppDevelopmentTitles extends StatelessWidget {
  // final Product product;

  const AppDevelopmentTitles({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text(
          "App Development",
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
          return AppDevelopmentDesign(
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
  {"title": "Flutter", "subtitle": "10 minutes", "icon": Icons.apple},
  {"title": "Java", "subtitle": "20 minutes", "icon": Icons.android},
  {"title": "Kotlin", "subtitle": "20 minutes", "icon": Icons.android},
];
