import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:maitri/pages/profile/profile.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put()
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text("Edit Profile"),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child:
                            const Image(image: AssetImage("assets/bmu.png"))),
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
                        child: const Icon(LineAwesomeIcons.camera,
                            size: 18.0, color: Colors.black)),
                  )
                ],
              ),
              const SizedBox(height: 50),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                            label: Text("Full Name"),
                            prefixIcon: Icon(Icons.person_outline_rounded))),
                    const SizedBox(height: 20),
                    TextFormField(
                        decoration: const InputDecoration(
                            label: Text("Email"),
                            prefixIcon: Icon(Icons.email_outlined))),
                    const SizedBox(height: 20),
                    TextFormField(
                        decoration: const InputDecoration(
                            label: Text("Phone Number"),
                            prefixIcon: Icon(Icons.phone))),
                    const SizedBox(height: 20),
                    TextFormField(
                        decoration: const InputDecoration(
                            label: Text("Password"),
                            prefixIcon: Icon(Icons.lock))),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Profile(
                                      title: 'Profile',
                                    )),
                          );
                        },
                        // onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(50, 21, 107, 0.8),
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child: const Text("Edit Profile",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     const Text.rich(
                    //       TextSpan(
                    //         text: "Registered",
                    //         style: TextStyle(fontSize: 12),
                    //         children: [
                    //           TextSpan(
                    //             text: "12 August 2020",
                    //             style: TextStyle(
                    //                 fontWeight: FontWeight.bold, fontSize: 12),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     ElevatedButton(
                    //       onPressed: () {},
                    //       style: ElevatedButton.styleFrom(
                    //           backgroundColor:
                    //               Colors.redAccent.withOpacity(0.1),
                    //           elevation: 0,
                    //           foregroundColor: Colors.red,
                    //           shape: const StadiumBorder(),
                    //           side: BorderSide.none),
                    //       child: const Text("Delete"),
                    //     ),
                    //   ],
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
