import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Widgets/community_widget.dart';

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Community Forum',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [
          Container(
              height: 15,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.borderColor, width: 1)),
              child: const ImageIcon(
                AssetImage(AppAssets.edit),
                color: Colors.black,
              )),
          gapSmall,
          Container(
              height: 15,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.borderColor, width: 1)),
              child: const ImageIcon(
                AssetImage(AppAssets.notification),
                color: Colors.black,
              )),
          gapSmall
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Column(
                  children: [
                    const CommunityWidget(
                      name: 'Annie John',
                      time: 'Posted 3 mins ago',
                      body:
                          'Hey guys, I just did an awesome editing with screening adjustments. Have a look at it, looking for your feedback guys!!!',
                      thumbUp: '0',
                      thumbdown: '0',
                      comments: '3',
                    ),
                    gapSmall,
                  ],
                )),
      ),
    );
  }
}
