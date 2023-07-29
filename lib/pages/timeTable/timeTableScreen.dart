import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class TimeTableScreen extends StatefulWidget {
  const TimeTableScreen({super.key});

  @override
  State<TimeTableScreen> createState() => _TimeTableScreenState();
}

class _TimeTableScreenState extends State<TimeTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Time Table"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        // title: Text(title),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: Container(
        height: 700,
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: ListView(
                scrollDirection: Axis.vertical,
                //  scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  // Table(
                  // border: TableBorder.all(),
                  // columnWidths: const {
                  //   0: FractionColumnWidth(0.12),
                  //   1: FractionColumnWidth(0.22),
                  //   2: FractionColumnWidth(0.11),
                  //   3: FractionColumnWidth(0.11),
                  // },
                  // children: [
                  //   buildRow(
                  //     [
                  //       '2020 Batch-7th Sem Data Sc. & AI',
                  //       '9:15-10:10',
                  //       '10:15-11:10',
                  //       '11:25-12:20',
                  //       '12:25-1:20',
                  //       '1:25-2:20',
                  //       '2:25-3:20',
                  //       '3:25-4:20',
                  //       '4:25-5:20',
                  //       '5:25-6:20',
                  //     ],
                  //     isHeader: true,
                  //   ),
                  //   buildRow(
                  //     [
                  //       'MON',
                  //       'Placement Training',
                  //       'Placement Training',
                  //       'BDA in NB105',
                  //       'CC',
                  //       'DIP/ D V with R',
                  //       'Lunch',
                  //       'DL',
                  //       'OE',
                  //       ' '
                  //     ],
                  //   ),
                  // ],
                  // ),
                  SizedBox(
                    height: 60,
                    child: ListView(
                      // itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(
                              child: Text("2020 Batch-7th Sem Data Sc. & AI")),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text("9:15-10:10")),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('10:15-11:10')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('11:25-12:20')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('12:25-1:20')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('1:25-2:20')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('2:25-3:20')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('3:25-4:20')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('4:25-5:20')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('5:25-6:20')),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: ListView(
                      // itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('MON')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child:
                              const Center(child: Text('Placement Training')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child:
                              const Center(child: Text('Placement Training')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('BDA in NB105')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('CC')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('DIP/ D V with R')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('Lunch')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('DL')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text('OE')),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: const Center(child: Text(' ')),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
        children: cells.map((cell) {
      final style = TextStyle(
        fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        fontSize: isHeader ? 15 : 14,
      );
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            cell,
            style: style,
          ),
        ),
      );
    }).toList());
