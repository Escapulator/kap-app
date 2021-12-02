import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Screens/navbar.dart';
import 'package:kap/Screens/tutor_navbar.dart';
import 'package:kap/Shared/custom_button.dart';

class PaymentDialog extends StatelessWidget {
  final IconData image;
  final String title;
  final String subtitle;

  const PaymentDialog(
      {Key? key,
      required this.image,
      required this.subtitle,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      backgroundColor: AppColors.backgroundColor,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width * .7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: ShapeDecoration(
                  shape: const CircleBorder(),
                  color: AppColors.orange.withOpacity(0.2)),
              child: Icon(
                image,
                color: AppColors.orange,
                size: 50.h,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.orange),
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.someText),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: CustomButton(
                function: () {
                  if (title == 'Course submitted') {
                    Navigator.of(context).pushNamed(TutorNavBar.routeName);
                  } else if (subtitle == 'Your payment has been successfull') {
                    Navigator.of(context).pushNamed(NavBar.routeName);
                  }
                },
                text: 'Back to home',
              ),
            )
          ],
        ),
      ),
    );
  }
}
