import 'package:flutter/material.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Auth/create_profile.dart';
import 'package:kap/Screens/Auth/reset_password.dart';
import 'package:kap/Shared/custom_button.dart';

class VerifyEmail extends StatelessWidget {
  static const routeName = '/VerifyEmail';
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List? data = ModalRoute.of(context)!.settings.arguments as List?;
    String header = data![0];
    String subheader = data[1];
    String textButton = data[2];
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.email),
                gapSmall,
                Text(
                  header,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w600),
                ),
                gapSmall,
                Text(
                  subheader,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.someText),
                ),
                gapSmall,
                CustomButton(
                    function: () {
                      if (header == 'Verify your email') {
                        Navigator.of(context)
                            .pushNamed(CreateProfile.routeName);
                      } else {
                        Navigator.of(context)
                            .pushNamed(ResetPassword.routeName);
                      }
                    },
                    text: 'Open email app'),
                gapTiny,
                TextButton(
                    onPressed: () {
                      if (textButton == 'Resend email') {
                        //perform function
                      } else if (textButton == ' Skip, I’ll confirm later') {
                        //perform different function
                      }
                    },
                    child: Text(
                      textButton,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.orange),
                    ))
              ],
            ),
          ),
          header == 'Verify your email'
              ? Positioned(
                  top: MediaQuery.of(context).size.height * .9,
                  left: MediaQuery.of(context).size.width * .25,
                  right: MediaQuery.of(context).size.width * .25,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Skip, I’ll confirm later',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    style: TextButton.styleFrom(primary: AppColors.orange),
                  ))
              : Container()
        ],
      ),
    );
  }
}
