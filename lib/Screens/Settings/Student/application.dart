import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Shared/custom_form.dart';

class Application extends StatelessWidget {
  static const routeName = '/Application';
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar('Application', Colors.black),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapMedium,
            const Text(
              'Your data has been collected from your profile. Please upload the below documents for the application',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.orange),
            ),
            gapSmall,
            const Text(
              'Certicifate',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            gapSmall,
            DottedBorder(
              dashPattern: const [9, 3],
              borderType: BorderType.RRect,
              color: AppColors.borderColor,
              strokeWidth: 2,
              radius: const Radius.circular(12),
              child: Container(
                height: MediaQuery.of(context).size.height * .17,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: AppColors.backgroundColor),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ImageIcon(
                      AssetImage(AppAssets.uploadIcon),
                      size: 80,
                      color: AppColors.orange,
                    ),
                    Text(
                      'Browse file',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.orange),
                    )
                  ],
                )),
              ),
            ),
            gapSmall,
            const Text(
              'Letter of recommendation',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            gapSmall,
            DottedBorder(
              dashPattern: const [9, 3],
              borderType: BorderType.RRect,
              color: AppColors.borderColor,
              strokeWidth: 2,
              radius: const Radius.circular(12),
              child: Container(
                height: MediaQuery.of(context).size.height * .17,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: AppColors.backgroundColor),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    ImageIcon(
                      AssetImage(AppAssets.uploadIcon),
                      size: 50,
                      color: AppColors.orange,
                    ),
                    Text(
                      'Letter-rec.word',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.someText),
                    ),
                    Text(
                      'Re-upload file',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.orange),
                    )
                  ],
                )),
              ),
            ),
            gapSmall,
            const Text(
              'Cover letter',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            gapSmall,
            const CustomForm(
              maxLines: 5,
              hintText: 'Type here....',
            ),
            gapMedium,
            CustomButton(function: () {}, text: 'Submit'),
            gapSmall
          ],
        ),
      ),
    );
  }
}
