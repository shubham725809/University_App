import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HyperLink extends StatefulWidget {
  const HyperLink({super.key});

  @override
  State<HyperLink> createState() => _HyperLinkState();
}

class _HyperLinkState extends State<HyperLink> {
  _launchurl() async {
    const url = 'https://www.youtube.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("sdvd"),
      ),
      body: IconButton(
        icon: const Icon(Icons.link),
        onPressed: _launchurl,
      ),
    );
  }
}
