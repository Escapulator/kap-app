import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Auth/Tutor/timing.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Widgets/check_box.dart';

class TutorInterest extends StatelessWidget {
  static const routeName = '/TutorInterest';
  const TutorInterest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar('', AppColors.orange),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapSmall,
            const Text(
              'What category best fits the knowledge you\'ll share?',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            gapSmall,
            const Text(
              'If you\'re not sure about the right category, you can change it later.',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.someText),
            ),
            gapSmall,
            CustomCheckBox(
              value: true,
              text: 'Screenwriting',
              onpressed: () {},
            ),
            gapSmall,
            CustomCheckBox(
              value: true,
              text: 'Sound',
              onpressed: () {},
            ),
            gapSmall,
            CustomCheckBox(
              value: true,
              text: 'Editing',
              onpressed: () {},
            ),
            gapSmall,
            CustomCheckBox(
              value: true,
              text: 'Business of Film',
              onpressed: () {},
            ),
            gapSmall,
            CustomCheckBox(
              value: true,
              text: 'Directing',
              onpressed: () {},
            ),
            gapSmall,
            CustomCheckBox(
              value: true,
              text: 'Production',
              onpressed: () {},
            ),
            gapSmall,
            CustomCheckBox(
              value: true,
              text: 'Production Design ',
              onpressed: () {},
            ),
            const Spacer(),
            CustomButton(
                function: () {
                  Navigator.of(context).pushNamed(Timing.routeName);
                },
                text: 'Next'),
            gapMedium
          ],
        ),
      ),
    );
  }
}
