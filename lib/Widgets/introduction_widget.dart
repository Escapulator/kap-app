import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Shared/custom_form.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapMedium,
          const Text(
            'Course title',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          gapTiny,
          const CustomForm(
            hintText: 'Learn photoshop from beginning to advan...',
          ),
          gapSmall,
          const Text(
            'Course subtitle',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          gapTiny,
          const CustomForm(
            hintText: 'Insert your course subtitle',
          ),
          gapSmall,
          const Text(
            'Course description',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          gapTiny,
          const CustomForm(
            hintText: 'Type here...',
            maxLines: 6,
          ),
          gapSmall,
          const Text(
            'Course image',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
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
          const Spacer(),
          Center(
              child: CustomButton(function: () {}, text: 'Save and Continue')),
          gapMedium
        ],
      ),
    );
  }
}
