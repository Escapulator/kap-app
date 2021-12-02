import 'package:flutter/material.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Widgets/announcement_tile.dart';

class TutorAnnouncement extends StatelessWidget {
  const TutorAnnouncement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          gapSmall,
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
                  hintText: 'Search here...'),
              validator: (value) {
                return value!.isEmpty ? 'Enter your email address' : null;
              },
            ),
          ),
          gapSmall,
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => Column(
                      children: [
                        AnnouncementTile(
                            body: index == 1
                                ? 'Hey guys, I’ll make a special announcement tomorrow. Be ready!!!'
                                : 'Hello everyone! I hope you are all well. I’m making this announcement because steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.',
                            image:
                                'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg',
                            name: 'William James',
                            time: index == 1
                                ? 'Posted 4 hours ago'
                                : 'Posted 6 hours ago'),
                        gapSmall
                      ],
                    )),
          ),
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
          ),
          gapSmall,
        ],
      ),
    );
  }
}
