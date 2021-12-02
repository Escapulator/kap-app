import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Widgets/performance_widget.dart';

class Performance extends StatelessWidget {
  const Performance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar('Performance', Colors.black),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(
          children: [
            gapMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                PerformanceWidget(
                    title: 'Total revenue',
                    subtitle: '₦325,000',
                    text: '₦75,000 this month'),
                PerformanceWidget(
                    title: 'Total enrollment',
                    subtitle: '156',
                    text: '14 this month')
              ],
            ),
            gapMedium,
            Image.asset(AppAssets.graph)
          ],
        ),
      ),
    );
  }
}
