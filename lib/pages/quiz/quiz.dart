import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../quiz/questions.dart';
import '../quiz/end.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int index = 0;
  int score = 0;
  final CountdownController _controller =
      new CountdownController(autoStart: true);
  final maxIndex = 9;

  _QuizState() {
    clear_answers();
    index = 0;
    score = 0;
    _controller.restart();
  }
  @override
  Widget build(BuildContext context) {
    bool answer = false;
    initState() {
      index = 0;
      score = 0;
      answer = false;
      _controller.restart();
    }

    void check(var opt) {
      if (index == maxIndex) {
        if (Questions[index]["answer"] == Questions[index]["option"][opt]) {
          score += 10;
          answer = true;
        } else {
          // if (score > 0) {
          //   // score -= 5;
          //   answer = false;
          // }
          answer = false;
        }
        add_answers(answer);

        if (GetStorage().read("TotalScore") == null) {
          GetStorage().write("TotalScore", score);
        } else {
          int ts = GetStorage().read("TotalScore");
          GetStorage().write("TotalScore", ts);
        }
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => End(score)),
        );
      } else {
        if (Questions[index]["answer"] == Questions[index]["option"][opt]) {
          score += 10;
          answer = true;
        } else {
          // if (score > 0) {
          //   // score -= 5;
          // }
          answer = false;
        }
        add_answers(answer);

        setState(() {
          index += 1;
          _controller.restart();
        });
      }
    }

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
                height: 40,
              ),
              Countdown(
                controller: _controller,
                seconds: 180,
                build: (BuildContext context, double time) => Container(
                  // margin: const EdgeInsets.fromLTRB(5, 50, 5, 25),
                  width: double.infinity,
                  height: 100,
                  child: LinearPercentIndicator(
                    barRadius: const Radius.circular(6),
                    percent: 1.0 - (time.toDouble() / 180),
                    backgroundColor: Colors.green,
                    progressColor: Color.fromARGB(255, 216, 15, 15),
                    lineHeight: 35,
                    center: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: Text(
                            "${time.toString()}/180.0",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.all(8),
                          child: const Icon(
                            Icons.timer_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                interval: const Duration(milliseconds: 100),
                onFinished: () {
                  if (index == maxIndex) {
                    if (GetStorage().read("TotalScore") == null) {
                      GetStorage().write("TotalScore", score);
                    } else {
                      int ts = GetStorage().read("TotalScore") + score;
                      GetStorage().write("TotalScore", ts);
                    }
                    add_answers(answer);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => End(score)),
                    );
                  } else {
                    add_answers(answer);
                    setState(() {
                      index++;
                      _controller.restart();
                    });
                  }
                },
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  // height: double.infinity,
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(10),
                          child: Row(children: [
                            const Text(
                              "Question:",
                              style: TextStyle(fontSize: 20),
                            ),
                            const Spacer(),
                            Text(
                              "${index + 1} / ${maxIndex + 1}",
                              style: const TextStyle(fontSize: 20),
                            ),
                          ]),
                        ),
                        Divider(
                          color: Colors.grey.shade700,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    Questions[index]["co1"],
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(5),
                                  child: Text(
                                    Questions[index]["question"],
                                    style: const TextStyle(fontSize: 15),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      onPressed: () => setState(() {
                                            check(0);
                                          }),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(30, 50),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        side: const BorderSide(
                                          width: 2.0,
                                          color: Color.fromARGB(
                                              255, 255, 162, 207),
                                        ),
                                        backgroundColor: Colors.purple,
                                      ),
                                      child: Text(
                                        Questions[index]["option"][0],
                                        style: const TextStyle(fontSize: 17),
                                        overflow: TextOverflow.clip,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      onPressed: () => check(1),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(30, 50),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        side: const BorderSide(
                                          width: 2.0,
                                          color: Color.fromARGB(
                                              255, 255, 162, 207),
                                        ),
                                        backgroundColor: Colors.purple,
                                      ),
                                      child: Text(
                                        Questions[index]["option"][1],
                                        style: const TextStyle(fontSize: 20),
                                        overflow: TextOverflow.clip,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      onPressed: () => check(2),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(30, 50),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        side: const BorderSide(
                                          width: 2.0,
                                          color: Color.fromARGB(
                                              255, 255, 162, 207),
                                        ),
                                        backgroundColor: Colors.purple,
                                      ),
                                      child: Text(
                                        Questions[index]["option"][2],
                                        style: const TextStyle(fontSize: 20),
                                        overflow: TextOverflow.clip,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(5),
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () => check(3),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(30, 50),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      side: const BorderSide(
                                        width: 2.0,
                                        color:
                                            Color.fromARGB(255, 255, 162, 207),
                                      ),
                                      backgroundColor: Colors.purple,
                                    ),
                                    child: Text(
                                      Questions[index]["option"][3],
                                      style: const TextStyle(fontSize: 20),
                                      overflow: TextOverflow.clip,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
