import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Settings/Student/financial_linkage.dart';
import 'package:kap/Screens/Settings/Student/job_board.dart';
import 'package:kap/Widgets/setting_button.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Column(
            children: [
              gapLarge,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg'),
                  ),
                  gapSmall,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('John Smith',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      Text('Student',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: AppColors.someText)),
                    ],
                  )
                ],
              ),
              gapMedium,
              const Divider(
                color: AppColors.borderColor,
                height: 1,
              ),
              gapMedium,
              GestureDetector(
                  onTap: () {},
                  child: const SettingButton(
                    text: 'Profile Data',
                    color: Colors.black,
                    icon: AppAssets.forward,
                  )),
              Gap(15.h),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(JobBoard.routeName);
                  },
                  child: const SettingButton(
                    text: 'Job Board',
                    color: Colors.black,
                    icon: AppAssets.forward,
                  )),
              Gap(15.h),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(Linkage.routeName,
                        arguments: 'Finance Linkages');
                  },
                  child: const SettingButton(
                    text: 'Finance Linkages',
                    color: Colors.black,
                    icon: AppAssets.forward,
                  )),
              Gap(15.h),
              GestureDetector(
                  onTap: () {},
                  child: const SettingButton(
                    text: 'Support Linkages',
                    color: Colors.black,
                    icon: AppAssets.forward,
                  )),
              gapMedium,
              const Divider(
                color: AppColors.borderColor,
                height: 1,
              ),
              gapMedium,
              GestureDetector(
                  onTap: () {},
                  child: const SettingButton(
                    text: 'FAQ’s',
                    color: Colors.black,
                    icon: AppAssets.forward,
                  )),
              Gap(15.h),
              GestureDetector(
                  onTap: () {},
                  child: const SettingButton(
                    text: 'Help Centre',
                    color: Colors.black,
                    icon: AppAssets.forward,
                  )),
              Gap(15.h),
              GestureDetector(
                  onTap: () {},
                  child: const SettingButton(
                    text: 'Contact us',
                    color: Colors.black,
                    icon: AppAssets.forward,
                  )),
              Gap(15.h),
              GestureDetector(
                  onTap: () {},
                  child: const SettingButton(
                    text: 'Logout',
                    color: AppColors.orange,
                    icon: AppAssets.logout,
                  ))
            ],
          ),
        ));
  }
}
