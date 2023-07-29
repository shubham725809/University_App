import 'package:flutter/material.dart';

class HomeMenuWidget extends StatelessWidget {
  const HomeMenuWidget({
    Key? key,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor = isDark ? Colors.pinkAccent : Colors.purpleAccent;
    return ListTile(
        onTap: onPress,
        leading: Column(
          children: [
            Container(
              child: Icon(icon, color: iconColor),
              // title: Text(
              //   title,
              //   textAlign: TextAlign.center,
              //   style: Theme.of(context)
              //       .textTheme
              //       .bodyText1
              //       ?.apply(color: textColor),
              // ),
            ),
          ],
        )

        // ------------------------------------- //
        );
  }
}
