import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../homeScreen/home.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final controller = ScrollController();
  final double itemSize = 150;

  void onListenerController() {
    setState(() {});
  }

  @override
  void initState() {
    controller.addListener(onListenerController);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.removeListener(onListenerController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Notifications"),
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
        // title: Text(title),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: _body(),
    );
  }

  Widget _body() => Stack(
        children: [
          _listView(),
          // Container(
          //   height: 180,
          //   decoration: const BoxDecoration(
          //       gradient: LinearGradient(
          //           begin: Alignment.topCenter,
          //           end: Alignment.bottomCenter,
          //           colors: [
          //         Color.fromARGB(135, 255, 255, 255),
          //         Colors.transparent
          //       ])),
          // )
        ],
      );
  Widget _listView() => SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: 9,
          controller: controller,
          itemBuilder: (context, index) {
            // print('index=:$index');
            // print('scrollController offset=:${controller.offset}');
            final itemOffset = index * itemSize;
            final difference = controller.offset - itemOffset;
            // print('$difference');
            final percent = 1 - difference / (itemSize / 2);
            // print('$percent');
            double opacity = percent;
            double scale = percent;
            if (opacity < 0.0) opacity = 0.0;
            if (opacity > 1.0) opacity = 1.0;
            if (scale > 1.0) scale = 1.0;
            return Opacity(
              opacity: 1.0,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..scale(scale, 1.0),
                child: Container(
                  alignment: Alignment.center,
                  height: itemSize,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 93, 66, 120),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.white,
                            // blurRadius: 1,
                            spreadRadius: 2)
                      ]),
                  // child: Text(
                  //   '$index',
                  //   style: const TextStyle(color: Colors.white, fontSize: 40),
                  // ),
                ),
              ),
            );
          },
        ),
      );
}
