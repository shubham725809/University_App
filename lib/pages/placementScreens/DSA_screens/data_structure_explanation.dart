import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'data_structure_screen.dart';

class DSA_ExplanationScreen extends StatelessWidget {
  final DataStructureTopics datatopic;

  const DSA_ExplanationScreen({
    Key? key,
    required this.datatopic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(datatopic.topicName),
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
          Container(
            margin: const EdgeInsets.all(17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "${datatopic.explanation} ",
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Syntax of Array Declaration:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'In C++:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  datatopic.cpp,
                ),

                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'In Java:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  datatopic.java,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'In Python:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  datatopic.python,
                ),
                const SizedBox(
                  height: 20,
                ),

                // Text(
                //   'Cabin No: 4th Floor ${user.cabinNo}',
                //   style: const TextStyle(fontWeight: FontWeight.bold),
                // ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
