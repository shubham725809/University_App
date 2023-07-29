import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:open_file/open_file.dart';

import '../../design/clipPath.dart';

class AssignmentUploadPage extends StatefulWidget {
  const AssignmentUploadPage({super.key});

  @override
  State<AssignmentUploadPage> createState() => _AssignmentUploadPageState();
}

class _AssignmentUploadPageState extends State<AssignmentUploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        // leading: IconButton(
        //     onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text("Assignment "),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Column(
              children: [
                Container(
                  color: const Color.fromRGBO(50, 21, 107, 0.8),
                  height: 150,
                  child: const Center(
                    child: Text(
                      'Coding Skills',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 400),
            padding: const EdgeInsets.all(32),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 270),
                backgroundColor: const Color.fromARGB(187, 255, 255, 255),
                side: const BorderSide(
                  width: 2.0,
                  color: Colors.grey,
                ),
              ),
              onPressed: () async {
                final result = await FilePicker.platform.pickFiles();
                if (result == null) return;

                //Open Single File;
                final file = result.files.first;
                openFile(file);
                print('Name: ${file.name}');
                print('Bytes: ${file.bytes}');
                print('Size: ${file.size}');
                print('Extension: ${file.extension}');
                print('Path: ${file.path}');

                // await saveFilePermanantly(file);
              },
              // child: const Text(
              //   'Add File',
              //   style: TextStyle(
              //     fontSize: 30,
              //     color: Color.fromRGBO(50, 21, 107, 0.8),
              //   ),
              // ),
              child: Column(
                children: const <Widget>[
                   SizedBox(
                    height: 30,
                  ),
                  Icon(
                    Icons.file_upload_outlined,
                    color: Color.fromRGBO(50, 21, 107, 0.8),
                    size: 100,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Add File',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(50, 21, 107, 0.8),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  // Future<File> saveFilePermanantly(PlatformFile file) async{

  // }
  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }
}
