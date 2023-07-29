import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:maitri/pages/homeScreen/home.dart';
import 'package:maitri/pages/profile/updateProfile.dart';
import 'package:maitri/pages/profile/widgets/profileMenu.dart';

import '../internshipScreens/internshipInfoScreen.dart';
import '../placementScreens/placStartScr.dart';
import '../viewResult/markSheet/markSheet_screen.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    // var iconColor = isDark ? Colors.black : Colors.teal;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text("Profile"),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        // ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage("assets/bmu.png"))),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: const Icon(LineAwesomeIcons.alternate_pencil,
                          size: 18.0, color: Colors.black)),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text("Priyanka Kachhawaha",
                style: Theme.of(context).textTheme.headline5),
            Text("priyanka.kachhawaha.20cse@bmu.edu.in",
                style: Theme.of(context).textTheme.bodyText2),
            const SizedBox(height: 20),
            SizedBox(
                width: 200,
                child: ElevatedButton(
                  // onPressed: () => {const UpdateProfile()},
                  // onPressed: () => Get.to(const UpdateProfile()),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UpdateProfile()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // background (button) color
                    foregroundColor: Colors.white, // foreground (text) color
                    side: BorderSide.none,
                    // shape: const StadiumBorder()
                  ),
                  child: const Text(
                    "Edit Profile",
                  ),
                )),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 30),

            // MENU::
            ProfileMenuWidget(
              title: "Personal Details",
              icon: LineAwesomeIcons.info_circle,
              onPress: () {},
            ),
            ProfileMenuWidget(
              title: "Mark Sheets",
              icon: LineAwesomeIcons.pen_square,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MarkSheetScreen(),
                  ),
                );
              },
            ),

            ProfileMenuWidget(
              title: "Achievements",
              icon: LineAwesomeIcons.award,
              onPress: () {},
            ),

            const Divider(color: Colors.grey),
            const SizedBox(height: 10),
            ProfileMenuWidget(
              title: "Placement",
              icon: LineAwesomeIcons.code,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlacementStartScreen(),
                  ),
                );
              },
            ),
            ProfileMenuWidget(
              title: "Internship",
              icon: LineAwesomeIcons.laptop_code,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InternshipInfoScreen(),
                  ),
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}
