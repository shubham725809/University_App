import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

class GoogleUrl extends StatelessWidget {
  final String urlString = 'https://www.areksoft.com/';
  const GoogleUrl({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Link(
      target: LinkTarget.self,
      uri: Uri.parse(urlString),
      builder: (context, followLink) {
        return ElevatedButton(
          onPressed: followLink,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(0, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            backgroundColor: Colors.white,
          ),
          child: const Icon(
            LineAwesomeIcons.google_logo,
            color: Colors.pinkAccent,
            size: 30,
          ),
        );
      },
    );
  }
}
