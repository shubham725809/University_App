import 'package:flutter/material.dart';

import 'data_structure_explanation.dart';

class DataStructureTopics {
  final String topicName;
  final String explanation;
  final String cpp;
  final String java;
  final String python;

  const DataStructureTopics({
    required this.topicName,
    required this.explanation,
    required this.cpp,
    required this.java,
    required this.python,
  });
}

class DataStructureScreen extends StatefulWidget {
  const DataStructureScreen({super.key});

  @override
  State<DataStructureScreen> createState() => _FacultyListState();
}

class _FacultyListState extends State<DataStructureScreen> {
  List<DataStructureTopics> datatopics = [
    const DataStructureTopics(
      topicName: 'Array',
      explanation:
          'An array is a collection of items stored at contiguous memory locations. The idea is to store multiple items of the same type together. This makes it easier to calculate the position of each element by simply adding an offset to a base value, i.e., the memory location of the first element of the array (generally denoted by the name of the array).',
      cpp: '\ndata_type array_name [size];',
      java:
          '\ndata_type array_name[];\nOR\ndata_type[] array_name;\ndata_type[] array_name = new data_type[size];',
      python: '\narray_name=[]\narray_name = [0 for i in range(size)] ',
    ),
    const DataStructureTopics(
      topicName: 'String',
      explanation:
          'Strings are often expressed as arrays of bytes (or words) that store a series of characters and are regarded as a general-purpose data type. The definition of a string is a collection of characters. A string differs from a character array in that it is finished with the unique character "\0"',
      cpp:
          '\nstring str1 = "Welcome to BMU!";\nOR\nstring str2("BML Munjal University");',
      java:
          '\nString s = "BmlMunjalUniversity";\nOR\nString s1 = new String("BmlMunjalUniversity");',
      python: '\nString1 = "Welcome to the Geeks World"',
    ),
    const DataStructureTopics(
      topicName: 'Linked List',
      explanation: '',
      cpp: 'dfv',
      java: 'sdfv',
      python: 'dv',
    ),
    const DataStructureTopics(
      topicName: 'Stack',
      explanation: '',
      cpp: 'dfv',
      java: 'sdfv',
      python: 'dv',
    ),
    const DataStructureTopics(
      topicName: 'Queue',
      explanation: '',
      cpp: 'dfv',
      java: 'sdfv',
      python: 'dv',
    ),
    const DataStructureTopics(
      topicName: 'Heap',
      explanation: '',
      cpp: 'dfv',
      java: 'sdfv',
      python: 'dv',
    ),
    const DataStructureTopics(
      topicName: 'Hash',
      explanation: '',
      cpp: 'dfv',
      java: 'sdfv',
      python: 'dv',
    ),
    const DataStructureTopics(
      topicName: 'Tree',
      explanation: '',
      cpp: 'dfv',
      java: 'sdfv',
      python: 'dv',
    ),
    const DataStructureTopics(
      topicName: 'Graph',
      explanation: '',
      cpp: 'dfv',
      java: 'sdfv',
      python: 'dv',
    ),
  ];
  Future refresh() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: refresh,
        child: ListView.builder(
          padding: const EdgeInsets.all(15.0),
          itemCount: datatopics.length,
          itemBuilder: (context, index) {
            final datatopic = datatopics[index];

            return Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.grey,
                  width: 0.4,
                ),

                borderRadius: BorderRadius.circular(5.0), //
              ),
              child: ListTile(
                title: Text(datatopic.topicName),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          DSA_ExplanationScreen(datatopic: datatopic),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
