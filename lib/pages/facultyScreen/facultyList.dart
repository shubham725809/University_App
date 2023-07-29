import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'facultyPage.dart';

class User {
  final String username;
  final String email;
  final String info;
  final String summary;
  final String cabinNo;
  // final String urlAvatar;

  const User(
      {required this.username,
      required this.email,
      required this.info,
      required this.summary,
      required this.cabinNo
      // required this.urlAvatar,
      });
}

class FacultyList extends StatefulWidget {
  const FacultyList({super.key});

  @override
  State<FacultyList> createState() => _FacultyListState();
}

class _FacultyListState extends State<FacultyList> {
  List<User> users = [
    const User(
      username: 'Atul Mishra',
      email: 'atul.mishra@bmu.edu.in',
      info: 'Assistant Professor',
      summary:
          'Mr. Atul Mishra comes from a family of Lawyers and judges. Prior to joining BMU, Mr. Mishra worked as Assistant Professor in an Affiliated College of Dr. Abdul Kalam Technical University, Lucknow, where he was instrumental in establishing Research and Development Cell and also involved in AICTE accreditation. He is an active participant in the TSEC Club on campus as its mentor & coaches the students on Machine Learning as well. His research areas include Natural language processing, Machine Learning, and Software Engineering. He has more than 5 years of teaching experience.',
      cabinNo: '86',
      // urlAvatar: '',
    ),
    const User(
      username: 'Dr. Satyendr Singh',
      email: 'satyendr.singh@bmu.edu.in',
      info: 'Assistant Professor',
      summary:
          'Dr Satyendr Singh obtained his Ph.D. in Computer Science from University of Allahabad, Allahabad, India in 2015. He obtained B.E. and M.E. in Computer Science & Engineering from Ch. Charan Singh University, Meerut and Panjab University, Chandigarh in 2000 and 2008. His research interests include Natural Language Processing, Machine Learning and Computational Statistics.',
      cabinNo: '78',
      // urlAvatar: '',
    ),
    const User(
      username: 'Dr. Yogesh Gupta',
      email: 'yogesh.gupta@bmu.edu.in',
      info: 'Assistant Professor',
      summary:
          'Dr. Yogesh Gupta is working as an Associate Professor in School of Engineering and Technology. He has more than 10 years of experience in teaching, research and administration. Before joining BMU, He has given his services to many institutes like Manipal University Jaipur, GLA University Mathura and etc. He did his doctorate (Ph.D.) from Dayalbagh Educational Institute, Agra (Deemed University) in 2017. He passed B.Tech. from Uttar Pradesh Technical University in 2004. He has also worked on a project at Institute for Systems Studies & Analyses department, DRDO, Delhi. He is an active researcher, guiding research, published papers in journals of national and international repute, and is also involved in R&D projects.',
      cabinNo: '68',

      // urlAvatar: '',
    ),
    const User(
      username: 'Dr. Ashok Kumar Suhag',
      email: 'ashok.suhag@bmu.edu.in',
      info: 'Assistant Professor',
      summary:
          'Dr. Ashok Kumar Suhag earned his doctorate from Gautam Buddha University in the area of Design for the testability (DFT) specifically on the scan architectures and low power test methodologies. He received his M.Tech in Microelectronics and VLSI design from Kurukshetra University, Kurukshetra and B.E. in Electronics Instrumentation and Control Engineering from the University of Rajasthan. \n He has experience of around eleven years in teaching and research. Prior to joining BMU, he was working at Gautam Buddha University, Greater Noida. He was also previously associated with VIT Jaipur, MEC Bikaner and with a research lab of CSIR that is CSIR- Central Electronics Engineering Research Institute (CEERI) Pilani as a Project Assistant where he worked in the area of MEMS particularly on the fabrication of micro-hotplate.',
      cabinNo: '68',

      // urlAvatar: '',
    ),
    const User(
      username: 'Dr. Nishtha Phutela',
      email: 'nishtha.phutela@bmu.edu.in',
      info: 'Assistant Professor',
      summary:
          'Ms. Nishtha Phutela is an Assistant Professor in the School of Engineering & Technology at BMU Munjal University, Gurgaon. She has great passion for teaching and empirical research. She has taught various subjects like Data Structures and Algorithms, Operating Systems, Python programming, Big Data Analytics, Human Computer Interaction. Her research area is utilizing machine learning algorithms for building healthcare applications and IOT based applications. She also has active interest in building effective interfaces for optimal human computer interaction.',
      cabinNo: '71',

      // urlAvatar: '',
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
        title: const Text("Faculty Info"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        // title: Text(title),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
        // actions: [
        //   IconButton(
        //     icon: const Icon(
        //       LineAwesomeIcons.search,
        //     ),
        //     onPressed: () {
        //       showSearch(
        //         context: context,
        //         delegate: SearchFaculty(),
        //       );
        //     },
        //   )
        // ],
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: ListView.builder(
          padding: const EdgeInsets.all(20.0),
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.grey,
                  width: 0.2,
                ),

                borderRadius: BorderRadius.circular(5.0), //
              ),
              child: ListTile(
                // leading: CircleAvatar(
                //   radius: 30,
                //   backgroundImage: Image(user.urlAvatar),
                // ),
                leading: Image.asset('assets/bmu.png'),
                title: Text(user.username),
                subtitle: Text(user.email),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FacultyPage(user: user),
                  ));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class SearchFaculty extends SearchDelegate {
  List<String> searchResults = [
    'wd',
    'atul',
    'india',
  ];
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(
          Icons.arrow_back,
        ),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear),
        ),
      ];

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 64),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
