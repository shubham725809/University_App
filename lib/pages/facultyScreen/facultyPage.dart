import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'facultyList.dart';

class FacultyPage extends StatelessWidget {
  final User user;

  const FacultyPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Faculty Info"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        // title: Text(title),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Image.asset(
            "assets/bmu.png",
            width: 100,
            height: 100,
          ),

          Container(
            margin: const EdgeInsets.all(17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.username,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(user.email, style: const TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                Text("( ${user.info} )"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  user.summary,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Cabin No: 4th Floor ${user.cabinNo}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
