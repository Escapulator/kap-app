import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';

class NoteTile extends StatelessWidget {
  final String? time;
  final String? title;
  final String? body;
  const NoteTile({Key? key, this.time, this.title, this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 30,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(8)),
          alignment: Alignment.center,
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
            Text(
              title!,
              style: const TextStyle(
                  fontSize: 14,
                  overflow: TextOverflow.visible,
                  fontWeight: FontWeight.w400),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .8,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 70,
              decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(8)),
              child: Text(body!,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.someText)),
            ),
          ],
        )
      ],
    );
  }
}
