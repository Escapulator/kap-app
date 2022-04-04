import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Home/Tutor/new_course.dart';
import 'package:kap/Widgets/tutor_course_widget.dart';

class TutorLanding extends StatelessWidget {
  const TutorLanding({Key? key}) : super(key: key);

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapTiny,
            const Text(
              'Your Courses',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            gapTiny,
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Column(
                  children: [
                    TutorCourseWidget(
                        imageUrl: AppAssets.learner,
                        title:
                            'Learn Video editing, Sound and \nProduction Design',
                        time: '4.5 total hours',
                        lessonNo: '24 lessons',
                        status: index.isOdd ? 'Public' : 'Draft'),
                    gapSmall
                  ],
                ),
                itemCount: 5,
              ),
            ),
            SizedBox(
              height: 35.h,
              width: MediaQuery.of(context).size.width * .9,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text(
                  'New course',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(NewCourse.routeName);
                },
                style: ElevatedButton.styleFrom(
                    primary: AppColors.orange,
                    onPrimary: AppColors.backgroundColor),
              ),
            ),
            gapSmall
          ],
        ),
      ),
    );
  }
}
