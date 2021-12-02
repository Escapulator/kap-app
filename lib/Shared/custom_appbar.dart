import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';

PreferredSizeWidget appBar(final String? text, final Color? color) {
  return AppBar(
      iconTheme: IconThemeData(color: color!),
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      title: Text(
        text!,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
      ));
}
