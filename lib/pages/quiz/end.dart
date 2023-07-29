import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:maitri/pages/QuizScreens/quizHomeScreen.dart';
import 'package:maitri/pages/homeScreen/home.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../design/navigatorDrawer.dart';
import '../quiz/questions.dart';

class End extends StatelessWidget {
  var score;
  final maxIndex = 9;
  End(int score) {
    this.score = score;
  }

  dynamic retText() {
    if (GetStorage().read("TotalScore") == null) {
      return "0";
    } else {
      return GetStorage().read("TotalScore").toString();
    }
  }

  List<Widget> listCard() {
    List<Widget> cards = [];

    for (int i = 0; i < maxIndex + 1; i++) {
      cards.add(CustomCard(i));
    }
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background_pg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Card(
                  elevation: 4.0,
                  color: Colors.amber,
                  // margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 7.0, horizontal: 16.0),
                    subtitle: Text(
                      'Note: The correct answers are given below, You can see how many are similar as your answer.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // subtitle: Text(
                    //   'All The Best ',
                    //   style:
                    //       TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    // ),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              SizedBox(
                // margin: const EdgeInsets.fromLTRB(5, 40, 5, 0),
                width: double.infinity,
                child: Card(
                  color: const Color.fromARGB(55, 0, 0, 0),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              CircularPercentIndicator(
                                radius: 40.0,
                                lineWidth: 10.0,
                                percent: score / 100,
                                center: Text(
                                  "Score\n$score",
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                                progressColor: Colors.green[800],
                                backgroundColor: Colors.red,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        Column(children: [
                          const SizedBox(
                            height: 40,
                          ),
                          const Text(
                            "Total Score",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            "$score",
                            style: const TextStyle(
                                fontSize: 18, color: Colors.white),
                          )
                        ]),
                        IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const QuizHomeScreen()),
                              );
                            },
                            icon: const Icon(
                              Icons.restart_alt_rounded,
                              size: 50,
                              color: Colors.green,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()));
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                backgroundColor: Colors.purple,
                              ),
                              child: const Text(
                                'Go Home',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ListView(children: listCard()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  var index;
  CustomCard(index) {
    this.index = index;
  }

  dynamic retColor(int i) {
    if (Answers[i] == true) {
      return Colors.green[800];
    } else {
      return Colors.redAccent[700];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: retColor(index),
      child: Container(
          margin: const EdgeInsets.all(10),
          child: Text(
            Questions[index]["note"],
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          )),
    );
  }
}
