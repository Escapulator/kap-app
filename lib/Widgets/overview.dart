import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapSmall,
          const Text(
            'About this course',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          gapTiny,
          const Text(
            'There are 7 core modules: Screenwriting, Sound, Editing, Business of Film, Direction, Production and Production Design. \nComplete mastery over lenses, lighting, sound recording, cinematography, and editing!',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.someText),
          ),
          gapSmall,
          const Divider(
            color: AppColors.someText,
          ),
          gapSmall,
          const Text(
            'By the numbers',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          gapTiny,
          Row(
            children: const [
              Text(
                'Skill level:',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.someText),
              ),
              Text(
                ' All Levels',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.someText),
              )
            ],
          ),
          gapTiny,
          Row(
            children: const [
              Text(
                'Students:',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.someText),
              ),
              Text(
                ' 240',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.someText),
              )
            ],
          ),
          gapTiny,
          Row(
            children: const [
              Text(
                'Languages:',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.someText),
              ),
              Text(
                ' English',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.someText),
              )
            ],
          ),
          gapTiny,
          Row(
            children: const [
              Text(
                'Captions:',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.someText),
              ),
              Text(
                ' Yes',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.someText),
              )
            ],
          ),
          gapTiny,
          Row(
            children: const [
              Text(
                'Lectures:',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.someText),
              ),
              Text(
                ' 43',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.someText),
              )
            ],
          ),
          gapTiny,
          Row(
            children: const [
              Text(
                'Video:',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.someText),
              ),
              Text(
                ' 7.5 total hours',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.someText),
              )
            ],
          )
        ],
      ),
    );
  }
}
