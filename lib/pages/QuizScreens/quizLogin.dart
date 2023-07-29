import 'package:flutter/material.dart';

import '../quiz/quiz.dart';

class QuizLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Start Your Quiz',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 65.0),
              // const Text(
              //   'BMU Email',
              //   style: TextStyle(
              //     color: Colors.purple,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 16.0,
              // ),
              // ),
              Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: Colors.purple[50],
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              // const Text(
              //   'Name as Registered',
              //   style: TextStyle(
              //     color: Colors.purple,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 16.0,
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    fillColor: Colors.purple[50],
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              // const Text(
              //   'Registration No.',
              //   style: TextStyle(
              //     color: Colors.purple,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 16.0,
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Registration Number',
                    fillColor: Colors.purple[50],
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              // const Text(
              //   'Passkey',
              //   style: TextStyle(
              //     color: Colors.purple,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 16.0,
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.only(top: 8.0, bottom: 26.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Passkey',
                    fillColor: Colors.purple[50],
                    filled: true,
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Quiz(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 32.0,
                    ),
                  ),
                  child: const Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
