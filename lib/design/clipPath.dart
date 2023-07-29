import 'package:flutter/material.dart';

class ClipPathBox extends StatefulWidget {
  const ClipPathBox({super.key});

  @override
  State<ClipPathBox> createState() => _ClipPathBoxState();
}

class _ClipPathBoxState extends State<ClipPathBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: CustomClipPath(),
        child: Column(
          children: [
            Container(
              color: const Color.fromRGBO(255, 85, 108, 1),
              height: 150,
              child: const Center(
                child: Text(
                  "Sem - 1",
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
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = 150;
    final path = Path();
    // (0,0) // 1.point
    // path.lineTo(0, h); // 2.Point
    // path.lineTo(w, h); // 4.Point
    path.lineTo(0, h);
    path.quadraticBezierTo(
      w * 0.5,
      h - 70,
      w,
      h,
    );
    path.lineTo(w, 0); // 5.Point
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
