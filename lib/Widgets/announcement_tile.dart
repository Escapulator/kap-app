import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';

class AnnouncementTile extends StatelessWidget {
  final String image;
  final String name;
  final String time;
  final String body;
  const AnnouncementTile(
      {Key? key,
      required this.body,
      required this.image,
      required this.name,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(image),
            ),
            gapSmall,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                Text(time,
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.someText))
              ],
            )
          ],
        ),
        gapSmall,
        Text(body,
            style: const TextStyle(
                fontSize: 14,
                height: 1.8,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
      ],
    );
  }
}
