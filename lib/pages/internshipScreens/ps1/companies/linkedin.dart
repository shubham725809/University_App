import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedinUrl extends StatelessWidget {
  final String urlString =
      'https://www.linkedin.com/company/areksoft-technologies/';
  const LinkedinUrl({Key? key}) : super(key: key);
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
            LineAwesomeIcons.linkedin_in,
            color: Colors.pinkAccent,
            size: 25,
          ),
        );
      },
    );
  }
}
