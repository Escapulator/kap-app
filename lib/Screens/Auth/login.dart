import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Auth/forgot_password.dart';
import 'package:kap/Screens/Auth/sign_up.dart';
import 'package:kap/Screens/navbar.dart';
import 'package:kap/Screens/tutor_navbar.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Shared/custom_form.dart';

class Login extends StatefulWidget {
  static const routeName = '/Login';
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final String? type = ModalRoute.of(context)!.settings.arguments as String?;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .45,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAssets.nosemask), fit: BoxFit.fill)),
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
                      'Welcome back',
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
                    gapMedium,
                    CustomButton(
                        function: () {
                          if (type == 'As an Instructor') {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                TutorNavBar.routeName, (route) => false);
                          } else if (type == 'As a student') {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                NavBar.routeName, (route) => false);
                          }
                        },
                        text: 'Login'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(ForgotPassword.routeName);
                        },
                        child: const Text(
                          'Forget password?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.orange),
                        )),
                    gapLarge,
                    const Text(
                      'Don’t have an account?',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColors.someText),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(SignUp.routeName);
                        },
                        child: const Text(
                          'Sign up',
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
