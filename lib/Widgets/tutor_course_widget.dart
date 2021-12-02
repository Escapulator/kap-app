import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';

class TutorCourseWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String lessonNo;
  final String status;
  const TutorCourseWidget(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.time,
      required this.lessonNo,
      required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .12,
      width: MediaQuery.of(context).size.width,
      child: Material(
        color: AppColors.backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .12,
              width: MediaQuery.of(context).size.width * .3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.fill)),
            ),
            gapTiny,
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(time,
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: AppColors.someText)),
                      gapMedium,
                      Text(lessonNo,
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: AppColors.someText))
                    ],
                  ),
                  Text(
                    status,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: status == 'Public'
                            ? AppColors.orange
                            : AppColors.someText),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
