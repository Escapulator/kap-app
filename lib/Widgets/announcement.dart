import 'package:flutter/material.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';

class Announcement extends StatelessWidget {
  const Announcement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          gapTiny,
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg'),
              ),
              gapSmall,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('William James',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  Text('Posted 21 hours ago',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.someText))
                ],
              )
            ],
          ),
          gapSmall,
          const Text(
              'Hello everyone! I hope you are all well. I’m making this announcement because steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.',
              style: TextStyle(
                  fontSize: 14,
                  height: 1.8,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
          gapSmall,
          gapTiny,
          Material(
            color: AppColors.backgroundColor,
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: const ImageIcon(AssetImage(AppAssets.send)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: AppColors.borderColor, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: AppColors.orange, width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: AppColors.borderColor, width: 1)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: AppColors.borderColor, width: 1)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: AppColors.borderColor, width: 1)),
                  contentPadding: const EdgeInsets.only(left: 8, top: 15),
                  hintText: 'Enter your comment'),
              validator: (value) {
                return value!.isEmpty ? 'Enter your email address' : null;
              },
            ),
          )
        ],
      ),
    );
  }
}
