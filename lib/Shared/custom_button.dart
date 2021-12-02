import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback function;
  final String text;
  const CustomButton({Key? key, required this.function, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      width: MediaQuery.of(context).size.width * .9,
      child: ElevatedButton(
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
        onPressed: function,
        style: ElevatedButton.styleFrom(
            primary: AppColors.orange, onPrimary: AppColors.backgroundColor),
      ),
    );
  }
}
