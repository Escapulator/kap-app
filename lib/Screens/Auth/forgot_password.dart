import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Auth/verify_email.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Shared/custom_form.dart';

class ForgotPassword extends StatelessWidget {
  static const routeName = '/ForgotPassword';
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.passwords),
            gapSmall,
            const Text(
              'Reset password',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            gapSmall,
            const Text(
              'Enter the email with your account and we’ll send \nan email with instructions to reset your \npasssword.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.someText),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: const CustomForm(
                hintText: 'Email address',
              ),
            ),
            gapSmall,
            gapTiny,
            CustomButton(
                function: () {
                  Navigator.of(context)
                      .pushNamed(VerifyEmail.routeName, arguments: [
                    'Check your email',
                    'We’ve sent a password recover instructions to \nyour email.',
                    'Skip, I’ll confirm later'
                  ]);
                },
                text: 'Send instructions'),
          ],
        ),
      ),
    );
  }
}
