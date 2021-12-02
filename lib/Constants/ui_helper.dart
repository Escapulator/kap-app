import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final Widget horizontalSpaceTiny = Gap(5.w);
final Widget horizontalSpaceSmall = Gap(10.w);
final Widget horizontalSpaceMedium = Gap(25.w);

final Widget gapTiny = Gap(5.h);
final Widget gapSmall = Gap(10.h);
final Widget gapMedium = Gap(25.h);
final Widget gapLarge = Gap(50.h);
final Widget gapMassive = Gap(120.h);

Widget spacedDivider = Column(
  children: [
    gapMedium,
    Divider(
      color: Colors.blueGrey,
      height: 5.h,
    ),
    gapMedium,
  ],
);
