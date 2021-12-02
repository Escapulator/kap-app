import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Widgets/course_widget.dart';

class StudentLanding extends StatelessWidget {
  const StudentLanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        centerTitle: false,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg'),
            ),
            gapSmall,
            const Text(
              'Hi, Smith',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            )
          ],
        ),
        actions: [
          Container(
              height: 15,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.borderColor, width: 1)),
              child: const ImageIcon(
                AssetImage(AppAssets.notification),
                color: Colors.black,
              )),
          gapSmall
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapTiny,
            const Text(
              'Available Courses',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            gapTiny,
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => CourseWidget(
                  title: 'The Masterclass Series',
                  subtitle:
                      'This course consists of 2 modules on Film Production and the Business of Film. ',
                  time: '7.5',
                  lessonCount: '30',
                  buttonText: index == 0 ? 'Continue learning' : 'Buy now',
                ),
                itemCount: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
