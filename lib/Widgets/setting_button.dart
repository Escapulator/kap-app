import 'package:flutter/material.dart';

class SettingButton extends StatelessWidget {
  final String text;
  final Color color;
  final String icon;
  const SettingButton(
      {Key? key, required this.text, required this.color, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              color: color, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        ImageIcon(
          AssetImage(icon),
          color: color,
        )
      ],
    );
  }
}
