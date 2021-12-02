import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Widgets/curriculum_item.dart';

class Curriculum extends StatelessWidget {
  const Curriculum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          gapMedium,
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) => Column(
                children: [const CurriculumItem(), gapSmall],
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .9,
                  height: 35.h,
                  child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      label: const Text(
                        'Add section',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        side: const BorderSide(color: Colors.black),
                        backgroundColor: AppColors.backgroundColor,
                      ))),
              gapSmall,
              CustomButton(function: () {}, text: 'Save and Continue'),
              gapMedium
            ],
          )
        ],
      ),
    );
  }
}
