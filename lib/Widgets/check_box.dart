import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';

class CustomCheckBox extends StatefulWidget {
  final String text;
  final Function onpressed;
  final bool value;
  const CustomCheckBox(
      {Key? key,
      required this.text,
      required this.onpressed,
      required this.value})
      : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.borderColor, width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          Checkbox(
            value: widget.value,
            onChanged: (value) {
              widget.onpressed;
            },
            activeColor: AppColors.orange,
          )
        ],
      ),
    );
  }
}
