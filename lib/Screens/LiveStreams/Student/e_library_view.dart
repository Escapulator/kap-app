import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Shared/custom_button.dart';

class ELibraryView extends StatelessWidget {
  static const routeName = '/ELibraryView';
  const ELibraryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('', Colors.black),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              AppAssets.aftereffect,
              fit: BoxFit.fill,
            ),
          ),
          gapSmall,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: const Text(
              'After effects presets 2.1 latest version',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .4,
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: const Text(
              'In this presets, you can access to 10 free After Effects Text Presents and with just one click you can get the effect for on your elemets. \n Kept in sent gave feel will oh it we. Has pleasure procured men laughing shutters nay. Old insipidity motionless continuing law shy partiality. Depending acuteness dependent eat use dejection. Unpleasing astonished discovered not nor shy. Morning hearted now met yet beloved evening. Has and upon his last here must. \n The servants securing material goodness her. Saw principles themselves ten are possession. So endeavor to continue cheerful doubtful we to. Turned advice the set vanity why mutual.',
              style: TextStyle(
                  color: AppColors.someText,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
          gapSmall,
          Center(child: CustomButton(function: () {}, text: 'Download')),
          Gap(45.h)
        ],
      ),
    );
  }
}
