import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../internshipScreens/ps1/companies/companiesInfo.dart';
import 'DSA_screens/dsa_StartScreen.dart';
import 'question_screens/questionStartScreen.dart';

class PlacementStartScreen extends StatefulWidget {
  const PlacementStartScreen({super.key});

  @override
  State<PlacementStartScreen> createState() => _PlacementStartScreenState();
}

class _PlacementStartScreenState extends State<PlacementStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Placement"),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DSA_StartScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(340, 180),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 164, 43, 134),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          LineAwesomeIcons.code,
                          color: Colors.pinkAccent,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "DSA",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                      //
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuestionStartScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(340, 180),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 164, 43, 134),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          LineAwesomeIcons.question_circle,
                          color: Colors.pinkAccent,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Question Practice",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                      //
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
