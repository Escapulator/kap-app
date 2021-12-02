import 'package:flutter/material.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';

class QNATile extends StatelessWidget {
  final String? time;
  final String? title;
  final String? chatCount;
  final String? up;
  const QNATile({Key? key, this.time, this.title, this.chatCount, this.up})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          child: Text(time!,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.backgroundColor)),
        ),
        gapSmall,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            Row(
              children: [
                Text(up!,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.someText)),
                const Icon(Icons.arrow_upward),
                Text(chatCount!,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.someText)),
                const ImageIcon(AssetImage(AppAssets.chat))
              ],
            )
          ],
        )
      ],
    );
  }
}
