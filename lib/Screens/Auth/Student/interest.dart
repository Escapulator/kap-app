import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/navbar.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Widgets/check_box.dart';

class Interest extends StatefulWidget {
  static const routeName = '/Interet';
  const Interest({Key? key}) : super(key: key);

  @override
  _InterestState createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: appBar('', AppColors.orange),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  gapMedium,
                  const Text(
                    'Your area of interest',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  gapSmall,
                  CustomCheckBox(
                    value: true,
                    text: 'Screenwriting',
                    onpressed: () {},
                  ),
                  gapSmall,
                  CustomCheckBox(
                    value: true,
                    text: 'Sound',
                    onpressed: () {},
                  ),
                  gapSmall,
                  CustomCheckBox(
                    value: true,
                    text: 'Editing',
                    onpressed: () {},
                  ),
                  gapSmall,
                  CustomCheckBox(
                    value: true,
                    text: 'Business of Film',
                    onpressed: () {},
                  ),
                  gapSmall,
                  CustomCheckBox(
                    value: true,
                    text: 'Directing',
                    onpressed: () {},
                  ),
                  gapSmall,
                  CustomCheckBox(
                    value: true,
                    text: 'Production',
                    onpressed: () {},
                  ),
                  gapSmall,
                  CustomCheckBox(
                    value: true,
                    text: 'Production Design',
                    onpressed: () {},
                  ),
                  gapMassive,
                  CustomButton(
                      function: () {
                        Navigator.of(context)
                            .pushReplacementNamed(NavBar.routeName);
                      },
                      text: 'Finish')
                ],
              ),
            )));
  }
}
