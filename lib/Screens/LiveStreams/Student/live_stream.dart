import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Widgets/comments.dart';

class LiveStream extends StatelessWidget {
  static const routeName = '/LiveStream';
  const LiveStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Live Stream', Colors.black),
      persistentFooterButtons: [
        TextFormField(
          decoration: InputDecoration(
              prefix: const CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg'),
              ),
              suffix: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Post',
                    style: TextStyle(
                      color: AppColors.orange,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              contentPadding: const EdgeInsets.only(left: 8, top: 15),
              hintText: 'Add a comment'),
          validator: (value) {
            return value!.isEmpty ? 'Enter your email address' : null;
          },
        ),
      ],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: 'liveclass',
            child: SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  AppAssets.video,
                  fit: BoxFit.fill,
                )),
          ),
          gapSmall,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Column(
              children: [
                const Text(
                  'How to do like Video Camera Settings like a pro just like me',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  'Hey guys, in this live stream I’ll be teaching how to do some camera settings so make sure you follow me with the video...',
                  style: TextStyle(
                      color: AppColors.someText,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                gapSmall,
              ],
            ),
          ),
          const Divider(
            color: Color(0xFFECECEC),
            thickness: 1,
          ),
          gapSmall,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '36 Comments',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .255,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) => Column(
                            children: [
                              const Comments(
                                  name: 'William Shawn',
                                  thumbUp: '2',
                                  thumbdown: '0',
                                  body:
                                      'Continue new you declared differed learning \nbringing honoured. At mean mind so \nupon they rent am walk.',
                                  chatCount: '0'),
                              gapSmall,
                            ],
                          )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
