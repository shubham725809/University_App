import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:maitri/pages/profile/profile.dart';
import 'package:maitri/pages/viewResult/markSheet/semOneSheet.dart';

class MarkSheetScreen extends StatefulWidget {
  const MarkSheetScreen({super.key});

  @override
  State<MarkSheetScreen> createState() => _MarkSheetScreenState();
}

class _MarkSheetScreenState extends State<MarkSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 193, 252),
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(
                    title: "Profile",
                  ),
                ),
              );
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text("Mark Sheet"),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SemesterOneSheet(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(140, 120),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  side: const BorderSide(
                    width: 2.0,
                    color: Color.fromARGB(255, 133, 103, 187),
                  ),
                  backgroundColor: const Color.fromARGB(255, 214, 193, 252),
                ),
                child: const Text(
                  'Semester 1',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(140, 120),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  side: const BorderSide(
                    width: 2.0,
                    color: Color.fromARGB(255, 133, 103, 187),
                  ),
                  backgroundColor: const Color.fromARGB(255, 214, 193, 252),
                ),
                child: const Text(
                  'Semester 2',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(140, 120),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  side: const BorderSide(
                    width: 2.0,
                    color: Color.fromARGB(255, 133, 103, 187),
                  ),
                  backgroundColor: const Color.fromARGB(255, 214, 193, 252),
                ),
                child: const Text(
                  'Semester 3',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(140, 120),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  side: const BorderSide(
                    width: 2.0,
                    color: Color.fromARGB(255, 133, 103, 187),
                  ),
                  backgroundColor: const Color.fromARGB(255, 214, 193, 252),
                ),
                child: const Text(
                  'Semester 4',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 48, 16, 82),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(140, 120),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  side: const BorderSide(
                    width: 2.0,
                    color: Color.fromARGB(255, 133, 103, 187),
                  ),
                  backgroundColor: const Color.fromARGB(255, 214, 193, 252),
                ),
                child: const Text(
                  'Semester 5',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(140, 120),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  side: const BorderSide(
                    width: 2.0,
                    color: Color.fromARGB(255, 133, 103, 187),
                  ),
                  backgroundColor: const Color.fromARGB(255, 214, 193, 252),
                ),
                child: const Text(
                  'Semester 6',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(140, 120),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  side: const BorderSide(
                    width: 2.0,
                    color: Color.fromARGB(255, 133, 103, 187),
                  ),
                  backgroundColor: const Color.fromARGB(255, 214, 193, 252),
                ),
                child: const Text(
                  'Semester 7',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(140, 120),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  side: const BorderSide(
                    width: 2.0,
                    color: Color.fromARGB(255, 133, 103, 187),
                  ),
                  backgroundColor: const Color.fromARGB(255, 214, 193, 252),
                ),
                child: const Text(
                  'Semester 8',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
