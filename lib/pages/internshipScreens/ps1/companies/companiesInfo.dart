import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'googleUrl.dart';
import 'linkedin.dart';

class InternshipCompanyInfo extends StatelessWidget {
  const InternshipCompanyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const url = 'https://www.linkedin.com/company/';
    return DefaultTabController(
      initialIndex: 0,
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
          title: const Text('Comapanies Information'),
          bottom: const TabBar(
              isScrollable: true,
              indicatorWeight: 5,
              indicatorColor: Color.fromARGB(255, 246, 114, 131),
              tabs: [
                Tab(
                  text: 'Areksoft Technology',
                ),
                Tab(
                  text: 'KPMG',
                ),
                Tab(
                  text: 'Univ.ai',
                ),
                Tab(
                  text: 'Areksoft Technology',
                ),
                Tab(
                  text: 'KPMG',
                ),
                Tab(
                  text: 'Univ.ai',
                ),
                Tab(
                  text: 'Areksoft Technology',
                ),
                Tab(
                  text: 'KPMG',
                ),
                Tab(
                  text: 'Univ.ai',
                ),
              ]),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(0, 400),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: const BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Icon(
                          LineAwesomeIcons.accusoft,
                          color: Colors.pinkAccent,
                          size: 100,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Areksoft Technologies Private Limited, is a Service & Product Company, specializing in Services, Solutions, and Software. Areksoft Technologies was launched in 2017, within this short period we have completed 300+ projects for 250+ happy clients worldwide, including the USA, Australia, Middle East, Nigeria, & India. Through its innovative team, Areksoft Technologies provides reliable and high-performing Commerce, Cloud, Analytics, Mobile, and Development services.With our professional experts, we have provided 100% satisfying results to our customers. ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.8,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Go and Visit the Company Now",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  LinkedinUrl(),
                  GoogleUrl(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
