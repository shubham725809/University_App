import 'package:flutter/material.dart';
import 'algorithms_screen.dart';
import 'data_structure_screen.dart';

class DSA_StartScreen extends StatelessWidget {
  const DSA_StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
          title: const Text('DSA Preparation'),
          bottom: const TabBar(
              isScrollable: false,
              indicatorWeight: 5,
              indicatorColor: Color.fromARGB(255, 246, 114, 131),
              tabs: [
                Tab(
                  text: 'Data Structure',
                ),
                Tab(
                  text: 'Algorithms',
                ),
              ]),
        ),
        body: const TabBarView(children: [
          Center(child: DataStructureScreen()),
          Center(child: AlgorithmsScreen()),
        ]),
      ),
    );
  }
}
