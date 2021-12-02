import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';

class CourseTitle extends StatelessWidget {
  final String title;
  final String time;
  const CourseTitle({Key? key, required this.time, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: true,
        onChanged: (value) {},
        activeColor: Colors.black,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      subtitle: Row(
        children: [
          Container(
              decoration: ShapeDecoration(
                  shape: const CircleBorder(),
                  color: AppColors.someText.withOpacity(0.4)),
              child: const Icon(
                Icons.play_arrow,
                color: AppColors.backgroundColor,
              )),
          gapSmall,
          Text(
            time,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.someText),
          )
        ],
      ),
    );
  }
}
