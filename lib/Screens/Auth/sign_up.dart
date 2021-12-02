import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Auth/login.dart';
import 'package:kap/Screens/Auth/verify_email.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Shared/custom_form.dart';

class SignUp extends StatefulWidget {
  static const routeName = '/SignUp';
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .45,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAssets.cameraman), fit: BoxFit.fill)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .55,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Form(
                child: Column(
                  children: [
                    gapSmall,
                    const Text(
                      'Create account',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                    gapSmall,
                    const CustomForm(
                      hintText: 'Email address',
                    ),
                    gapSmall,
                    const CustomForm(
                      hintText: 'Password',
                    ),
                    gapSmall,
                    const CustomForm(
                      hintText: 'Retype password',
                    ),
                    gapMedium,
                    CustomButton(
                        function: () {
                          Navigator.of(context)
                              .pushNamed(VerifyEmail.routeName, arguments: [
                            'Verify your email',
                            'An email has been sent to your email address \njohn_smith42@gmail.com. Please click on the \nprovided link to verify your email.',
                            'Resend email'
                          ]);
                        },
                        text: 'Sign up'),
                    gapLarge,
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColors.someText),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Login.routeName);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.orange),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
