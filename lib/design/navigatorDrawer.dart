import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:maitri/pages/QuizScreens/quizHomeScreen.dart';

import '../pages/homeScreen/home.dart';
import '../pages/notifications/notification_screen.dart';
import '../pages/profile/profile.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        )),
      );
  Widget buildHeader(BuildContext context) => Material(
        color: const Color.fromRGBO(50, 21, 107, 0.8),
        child: InkWell(
          onTap: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (context) => const Profile(
                      title: 'Navigator',
                    )),
          ),
          child: Container(
            padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Color.fromARGB(255, 173, 0, 58),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Priyanka Kachhawaha',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  'priyanka.kachhawaha.20cse@bmu.edu.in',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      );
  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(25),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: const Icon(
                LineAwesomeIcons.home,
                size: 40,
                color: Color.fromRGBO(50, 21, 107, 0.8),
              ),
              title: const Text(
                "Home",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                LineAwesomeIcons.user_check,
                size: 40,
                color: Color.fromRGBO(50, 21, 107, 0.8),
              ),
              title: const Text(
                "Attendance",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.checklist_rounded,
                size: 40,
                color: Color.fromRGBO(50, 21, 107, 0.8),
              ),
              title: const Text(
                "Quiz",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const QuizHomeScreen(),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(
                LineAwesomeIcons.pen,
                size: 40,
                color: Color.fromRGBO(50, 21, 107, 0.8),
              ),
              title: const Text(
                "Compaint",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                LineAwesomeIcons.person_entering_booth,
                size: 40,
                color: Color.fromRGBO(50, 21, 107, 0.8),
              ),
              title: const Text(
                "Personal Details",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Profile(
                    title: 'Profile',
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                LineAwesomeIcons.bell,
                size: 40,
                color: Color.fromRGBO(50, 21, 107, 0.8),
              ),
              title: const Text(
                "Notifications",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NotificationPage(),
                ),
              ),
            ),
          ],
        ),
      );
}
