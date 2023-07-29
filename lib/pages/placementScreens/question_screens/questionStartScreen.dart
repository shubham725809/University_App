import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'quesContentScreen.dart';

class QuestionTopics {
  final String topicName;
  final List<String> quesEasy;
  final List<String> quesMedium;
  final List<String> quesHard;

  const QuestionTopics({
    required this.topicName,
    required this.quesEasy,
    required this.quesMedium,
    required this.quesHard,
  });
}

class QuestionStartScreen extends StatefulWidget {
  const QuestionStartScreen({super.key});

  @override
  State<QuestionStartScreen> createState() => _FacultyListState();
}

class _FacultyListState extends State<QuestionStartScreen> {
  List<QuestionTopics> quesdetail = [
    const QuestionTopics(
      topicName: 'Array',
      quesEasy: [
        'Largest Element in an Array',
        'Remove duplicates from Sorted array',
        'Left rotate an array by D places',
        'Find the Union and intersection of two sorted arrays',
        'Find missing number in an array',
        'Longest subarray with given sum(Positives + Negatives)',
      ],
      quesMedium: [
        'Sort an array of 0’s 1’s and 2’s',
        '	Next Permutation',
        'Leaders in an Array problem',
        'Longest Consecutive Sequence in an Array',
        'Set Matrix Zeros',
        'Rotate Matrix by 90 degrees',
        'Print the matrix in spiral manner',
      ],
      quesHard: [
        'Pascal’s Triangle',
        '3-Sum Problem',
        'Merge Overlapping Subintervals',
        'Merge two sorted arrays without extra space',
        'Count Inversions',
        'Reverse Pairs',
        'Maximum Product Subarray',
      ],
    ),
    const QuestionTopics(
      topicName: 'String',
      quesEasy: [
        'Isomorphic String',
        'Longest Common Prefix',
        'Remove outermost Paranthesis',
        'Largest odd number in a string',
        'check whether one string is a rotation of another',
        'Reverse words in a given string / Palindrome Check',
      ],
      quesMedium: [
        'Implement Atoi',
        'Count Number of Substrings',
        'Sort Characters by frequency',
        'Maximum Nesting Depth of Paranthesis',
        'Roman Number to Integer and vice versa',
        'Roman Number to Integer and vice versa',
      ],
      quesHard: [
        'Reverse Every Word in A String',
        'Sum of Beauty of all substring',
        'Reverse Every Word in A String',
        'Sum of Beauty of all substring',
        'Reverse Every Word in A String',
        'Longest Palindromic Substring[Do it without DP]',
      ],
    ),
    const QuestionTopics(
      topicName: 'LinkedList',
      quesEasy: [
        'Introduction to LinkedList, learn about struct, and how is node represented',
        'Inserting a node in LinkedList',
        'Deleting a node in LinkedList',
        'Find the length of the linkedlist [learn traversal]',
        'Search an element in the LL',
      ],
      quesMedium: [
        ' Reverse a LinkedList [Iterative]',
        'Reverse a LL [Recursive]',
        'Detect a loop in LL	',
        'Find the starting point in LL	',
        'Length of Loop in LL',
        'Check if LL is palindrome or not',
        'Segrregate odd and even nodes in LL	',
        'Remove Nth node from the back of the LL',
      ],
      quesHard: [
        'Reverse LL in group of given size K',
        'Rotate a LL	',
        'Flattening of LL',
        'Clone a Linked List with random and next pointer',
        'Clone a Linked List with random and next pointer',
      ],
    ),
    const QuestionTopics(
      topicName: 'Stack',
      quesEasy: [],
      quesMedium: [],
      quesHard: [],
    ),
    const QuestionTopics(
      topicName: 'Queue',
      quesEasy: [],
      quesMedium: [],
      quesHard: [],
    ),
    const QuestionTopics(
      topicName: 'Heap',
      quesEasy: [],
      quesMedium: [],
      quesHard: [],
    ),
    const QuestionTopics(
      topicName: 'Hash',
      quesEasy: [],
      quesMedium: [],
      quesHard: [],
    ),
    const QuestionTopics(
      topicName: 'Tree',
      quesEasy: [],
      quesMedium: [],
      quesHard: [],
    ),
    const QuestionTopics(
      topicName: 'Graph',
      quesEasy: [],
      quesMedium: [],
      quesHard: [],
    ),
  ];
  Future refresh() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Question Preparation"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: ListView.builder(
          padding: const EdgeInsets.all(15.0),
          itemCount: quesdetail.length,
          itemBuilder: (context, index) {
            final questopic = quesdetail[index];
            return Card(
              child: ListTile(
                title: Text(questopic.topicName),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          QuestionContentScreen(questopic: questopic),
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
