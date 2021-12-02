import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/LiveStreams/Student/e_library_list.dart';
import 'package:kap/Screens/LiveStreams/Student/e_library_view.dart';
import 'package:kap/Screens/LiveStreams/Student/live_class_list.dart';
import 'package:kap/Screens/LiveStreams/Student/live_stream.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Widgets/rounded_image.dart';

class Class extends StatelessWidget {
  const Class({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('', Colors.black),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Live Stream Classes',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(LiveClassList.routeName);
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(
                          color: AppColors.orange,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
            gapSmall,
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(LiveStream.routeName);
                //pass the id as the args
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Hero(
                      tag: 'liveclass',
                      child: RoundedImage(image: AppAssets.liveclass)),
                  gapTiny,
                  const Text.rich(TextSpan(
                      text: 'Live now ',
                      style: TextStyle(
                          color: AppColors.orange,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text:
                              ' -  How to do like Video Camera Settings like a pro - 20/06/2021',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )
                      ]))
                ],
              ),
            ),
            gapSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'E-Library',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(ELibraryList.routeName);
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(
                          color: AppColors.orange,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
            gapSmall,
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(ELibraryView.routeName);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const RoundedImage(image: AppAssets.aftereffect),
                            gapTiny,
                            const Text(
                              'After effects presets 2.1 latest version',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            gapSmall
                          ],
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
