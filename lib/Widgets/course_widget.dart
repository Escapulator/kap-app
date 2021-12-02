import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Home/Student/course_content.dart';
import 'package:kap/Screens/Home/Student/order_summary.dart';
import 'package:kap/Shared/custom_button.dart';

class CourseWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? time;
  final String? lessonCount;
  final String? buttonText;
  const CourseWidget(
      {Key? key,
      this.title,
      this.subtitle,
      this.time,
      this.lessonCount,
      this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .4,
          width: MediaQuery.of(context).size.width * 1,
          child: Material(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .2,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg'),
                          fit: BoxFit.fill)),
                ),
                gapTiny,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      gapTiny,
                      Text(
                        subtitle!,
                        style: const TextStyle(
                            fontSize: 14,
                            overflow: TextOverflow.visible,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      gapTiny,
                      Row(
                        children: [
                          Text(
                            time! + 'total hours',
                            style: const TextStyle(
                                color: AppColors.someText,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: AppColors.borderColor),
                          ),
                          Text(
                            lessonCount! + 'lesson',
                            style: const TextStyle(
                                color: AppColors.someText,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                gapSmall,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: buttonText! == 'Continue learning'
                      ? Center(
                          child: CustomButton(
                              function: () {
                                Navigator.of(context)
                                    .pushNamed(CourseContent.routeName);
                              },
                              text: buttonText!))
                      : Center(
                          child: SizedBox(
                            height: 35.h,
                            width: MediaQuery.of(context).size.width * .9,
                            child: ElevatedButton.icon(
                              icon: const Icon(Icons.lock),
                              label: Text(buttonText!),
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                    OrderSummary.routeName,
                                    arguments: [title, subtitle]);
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: AppColors.orange,
                                  onPrimary: AppColors.backgroundColor),
                            ),
                          ),
                        ),
                )
              ],
            ),
          ),
        ),
        gapSmall,
        gapTiny
      ],
    );
  }
}
