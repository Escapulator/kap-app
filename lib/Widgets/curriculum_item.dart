import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Shared/custom_form.dart';

class CurriculumItem extends StatelessWidget {
  const CurriculumItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .4,
      width: MediaQuery.of(context).size.width,
      child: Material(
        //color: AppColors.backgroundColor,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Section 1',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.delete_outline)),
                ],
              ),
              const CustomForm(
                hintText: 'Course introduction',
              ),
              Container(
                height: 120.h,
                width: MediaQuery.of(context).size.width * .9,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.borderColor, width: 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Lecture 1',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.delete_outline)),
                      ],
                    ),
                    const CustomForm(
                      hintText: 'What\'s in this course?',
                    ),
                    SizedBox(
                      height: 30.h,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.drive_folder_upload),
                          label: const Text(
                            'Upload content',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.black,
                            side: const BorderSide(color: Colors.black),
                            backgroundColor: AppColors.backgroundColor,
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
                child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text(
                      'Add lecture',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    style: OutlinedButton.styleFrom(
                      primary: AppColors.backgroundColor,
                      backgroundColor: Colors.black,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
