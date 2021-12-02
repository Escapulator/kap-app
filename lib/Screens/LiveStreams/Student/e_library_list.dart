import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/LiveStreams/Student/live_stream.dart';
import 'package:kap/Shared/custom_appbar.dart';

class ELibraryList extends StatelessWidget {
  static const routeName = '/ELibraryList';
  const ELibraryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar('E Library List', Colors.black),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(LiveStream.routeName);
            //pass the id as the args
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAssets.liveclass),
                          fit: BoxFit.cover)),
                ),
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
                    ])),
                gapSmall
              ],
            ),
          ),
        ),
      ),
    );
  }
}
