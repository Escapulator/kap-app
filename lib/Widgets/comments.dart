import 'package:flutter/material.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';

class Comments extends StatelessWidget {
  final String name;
  final String thumbUp;
  final String thumbdown;
  final String body;
  final String chatCount;
  const Comments(
      {Key? key,
      required this.name,
      required this.thumbUp,
      required this.thumbdown,
      required this.body,
      required this.chatCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(
              'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg'),
        ),
        gapSmall,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
            Text(body,
                style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            Row(
              children: [
                Text(thumbUp,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.orange)),
                const Icon(
                  Icons.arrow_upward,
                  color: AppColors.orange,
                ),
                Text(thumbdown,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.someText)),
                const Icon(Icons.arrow_downward),
                const ImageIcon(AssetImage(AppAssets.chat))
              ],
            )
          ],
        )
      ],
    );
  }
}
