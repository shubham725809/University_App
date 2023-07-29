import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:maitri/pages/academicScreen/academic_info.dart';
import 'package:maitri/pages/academicScreen/AcademicContentScreen.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
          title: const Text('Academic Information'),
          bottom: const TabBar(
              isScrollable: true,
              indicatorWeight: 5,
              indicatorColor: Color.fromARGB(255, 246, 114, 131),
              tabs: [
                Tab(
                  text: 'SEM 1',
                ),
                Tab(
                  text: 'SEM 2',
                ),
                Tab(
                  text: 'SEM 3',
                ),
                Tab(
                  text: 'SEM 4',
                ),
                Tab(
                  text: 'SEM 5',
                ),
                Tab(
                  text: 'SEM 6',
                ),
                Tab(
                  text: 'SEM 7',
                ),
                Tab(
                  text: 'SEM 8',
                ),
              ]),
        ),
        body: const TabBarView(children: [
          Center(child: AcademicContentScreen()),
          Center(child: AcademicContentScreen()),
          Center(child: AcademicContentScreen()),
          Center(child: AcademicContentScreen()),
          Center(child: AcademicContentScreen()),
          Center(child: AcademicContentScreen()),
          Center(child: AcademicContentScreen()),
          Center(child: AcademicContentScreen()),
        ]),
      ),
    );
  }
}
