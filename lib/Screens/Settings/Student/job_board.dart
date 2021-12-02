import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Widgets/job_item.dart';

class JobBoard extends StatelessWidget {
  static const routeName = '/JobBoard';
  const JobBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar('Job board', Colors.black),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        itemCount: 5,
        itemBuilder: (context, index) => Column(
          children: [
            const JobItem(
              title: 'Creative Producer',
              subTitle: 'Blue Media Nig LTD',
              body:
                  'We are looking to appoint a Lecturer/Senior Lecturer in Filmmaking. Ideally, you should have experience of a creative...',
              location: 'Ikoyi Lagos',
              duration: 'Full-time',
              salary: '₦35,000',
            ),
            gapSmall
          ],
        ),
      ),
    );
  }
}
