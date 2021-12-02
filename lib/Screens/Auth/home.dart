import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Auth/select_user.dart';

class Home extends StatelessWidget {
  static const routeName = '/Home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .45,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppAssets.home), fit: BoxFit.fill)),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * .55,
                  child: Column(
                    children: [
                      Gap(140.h),
                      const Text(
                        'E-learning Institute for Film \nand TV Production',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Gap(30.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    SelectUser.routeName, (route) => false,
                                    arguments: [
                                      'As a student',
                                      'Switch to Tutor'
                                    ]);
                              },
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .17,
                                width: MediaQuery.of(context).size.width * .4,
                                child: Material(
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(AppAssets.student),
                                      gapSmall,
                                      const Text(
                                        'Student',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    SelectUser.routeName, (route) => false,
                                    arguments: [
                                      'As an Instructor',
                                      'Switch to Student'
                                    ]);
                              },
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .17,
                                width: MediaQuery.of(context).size.width * .4,
                                child: Material(
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(AppAssets.instructor),
                                      gapSmall,
                                      const Text(
                                        'Instructor',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.h),
              child: SizedBox(
                  height: 160.h,
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      AppAssets.kap,
                      fit: BoxFit.fill,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
