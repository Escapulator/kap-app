import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';

class LinkageWidget extends StatelessWidget {
  final String title;
  final String link;
  final String textButton;
  const LinkageWidget(
      {Key? key,
      required this.link,
      required this.textButton,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      width: MediaQuery.of(context).size.width,
      child: Material(
        elevation: 4,
        color: AppColors.backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              gapTiny,
              Text(
                link,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.orange),
              ),
              gapSmall,
              SizedBox(
                height: 35.h,
                width: MediaQuery.of(context).size.width * .9,
                child: ElevatedButton(
                  child: Text(
                    textButton,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: textButton == 'Apply now'
                          ? AppColors.orange
                          : AppColors.borderColor,
                      onPrimary: textButton == 'Apply now'
                          ? AppColors.backgroundColor
                          : AppColors.someText),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
