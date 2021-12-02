import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Auth/Tutor/tutor_interest.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Shared/custom_form.dart';

class WorkTitle extends StatelessWidget {
  static const routeName = '/WorkTitle';
  const WorkTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar('', AppColors.orange),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapSmall,
            const Text(
              'How about a working title?',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            gapSmall,
            const Text(
              'It\'s ok if you can\'t think of a good title now. You can change it later.',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.someText),
            ),
            gapSmall,
            const CustomForm(
              hintText: 'e.g. Learn Photoshop ',
            ),
            const Spacer(),
            CustomButton(
                function: () {
                  Navigator.of(context).pushNamed(TutorInterest.routeName);
                },
                text: 'Next'),
            gapMedium
          ],
        ),
      ),
    );
  }
}
