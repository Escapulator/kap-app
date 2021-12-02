import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';

class PerformanceWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String text;
  const PerformanceWidget(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .12,
      width: MediaQuery.of(context).size.width * .4,
      child: Material(
        color: AppColors.backgroundColor,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
              Text(subtitle,
                  style: const TextStyle(
                      color: AppColors.orange,
                      fontSize: 22,
                      fontWeight: FontWeight.w600)),
              Text(text,
                  style: const TextStyle(
                      color: AppColors.someText,
                      fontSize: 12,
                      fontWeight: FontWeight.w400))
            ],
          ),
        ),
      ),
    );
  }
}
