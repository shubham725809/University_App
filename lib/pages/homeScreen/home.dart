import 'package:flutter/material.dart';
import 'package:maitri/pages/notifications/notification_screen.dart';
import 'package:maitri/pages/homeScreen/home_page.dart';
import 'package:maitri/pages/profile/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 1;

  final List<Widget> screens = [
    const NotificationPage(),
    const FirstPage(
      title: 'Home',
    ),
    const Profile(
      title: "Profile",
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentPage = const FirstPage(title: "Home");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentPage),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentPage = const NotificationPage();

                        pageIndex = 0;
                      });
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications,
                              size: 40,
                              color: pageIndex == 0
                                  ? Colors.deepPurple[700]
                                  : Colors.black),
                          // Text('Alert',
                          //     style: TextStyle(
                          //         color: pageIndex == 0
                          //             ? Colors.blue
                          //             : Colors.red))
                        ]),
                  ),
                  // Spacer(),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentPage = const FirstPage(title: 'Home');
                        pageIndex = 1;
                      });
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home_filled,
                              size: 40,
                              color: pageIndex == 1
                                  ? Colors.deepPurple[700]
                                  : Colors.black),
                          // Text(
                          //   'Home',
                          //   style: TextStyle(
                          //       color: pageIndex == 1
                          //           ? Colors.deepPurple[700]
                          //           : Colors.black),
                          // )
                        ]),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentPage = const Profile(title: 'Profile');
                        pageIndex = 2;
                      });
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,
                              size: 40,
                              color: pageIndex == 2
                                  ? Colors.purple[700]
                                  : Colors.black),
                          // Text('Profile',
                          //     style: TextStyle(
                          //         color: pageIndex == 2
                          //             ? Colors.blue
                          //             : Colors.red))
                        ]),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
