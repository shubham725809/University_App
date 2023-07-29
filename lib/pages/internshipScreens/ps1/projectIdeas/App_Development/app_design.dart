import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDevelopmentDesign extends StatelessWidget {
  final Map<String, dynamic> singleitems;
  final Color color;
  const AppDevelopmentDesign(
      {Key? key, required this.singleitems, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          child: Container(
            width: double.infinity,
            color: color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(singleitems["icon"], size: 50, color: Colors.white),
                const SizedBox(height: 2),
                Text(
                  singleitems["title"],
                  style: const TextStyle(
                    fontSize: 35,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 0),
              ],
            ),
          ),
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => QuizLoginForm()),
          // );
        });
  }
}

List<Color> colors = [
  const Color.fromARGB(255, 186, 58, 209),
  const Color.fromARGB(255, 63, 147, 216),
  const Color.fromARGB(255, 47, 159, 51),
  const Color.fromARGB(255, 209, 196, 78),
  const Color.fromARGB(255, 204, 144, 55),
  const Color.fromARGB(255, 163, 100, 174),
];
