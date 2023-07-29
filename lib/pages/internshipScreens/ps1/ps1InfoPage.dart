import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'companies/companiesInfo.dart';
import 'projectIdeas/projectIdeaScreen.dart';

class PsOneScreen extends StatefulWidget {
  const PsOneScreen({super.key});

  @override
  State<PsOneScreen> createState() => _PsOneScreenState();
}

class _PsOneScreenState extends State<PsOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("PS 1 Information"),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: Column(
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
                        builder: (context) => const InternshipCompanyInfo()),
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
                      LineAwesomeIcons.building,
                      color: Colors.pinkAccent,
                      size: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Companies Info",
                      style: TextStyle(
                        fontSize: 15,
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
                        builder: (context) => const ProjectIdeaContentScreen()),
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
                      LineAwesomeIcons.project_diagram,
                      color: Colors.pinkAccent,
                      size: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Project Idea",
                      style: TextStyle(
                        fontSize: 15,
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
    );
  }
}
