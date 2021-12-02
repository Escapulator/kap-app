import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Shared/custom_form.dart';

class ResetPassword extends StatelessWidget {
  static const routeName = '/ResetPassword';
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.password),
            gapSmall,
            const Text(
              'Create new password',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            gapSmall,
            const Text(
              'Your new password must be different from \nprevious used passwords.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.someText),
            ),
            gapSmall,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: const CustomForm(
                hintText: 'Password',
              ),
            ),
            gapSmall,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: const CustomForm(
                hintText: 'Re-type password',
              ),
            ),
            gapSmall,
            gapTiny,
            CustomButton(function: () {}, text: 'Reset password'),
          ],
        ),
      ),
    );
  }
}
