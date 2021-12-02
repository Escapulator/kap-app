import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Settings/Student/application.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Shared/custom_button.dart';

class JobDetail extends StatelessWidget {
  static const routeName = '/JobDetails';
  const JobDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List? type = ModalRoute.of(context)!.settings.arguments as List?;
    String title = type![0];
    String subTitle = type[1];
    //String body = type[2];
    String location = type[3];
    String duration = type[4];
    String salary = type[5];
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar('Job Details', Colors.black),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    gapSmall,
                    SizedBox(
                      height: 90.h,
                      width: 140.w,
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 4,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg'),
                        ),
                      ),
                    ),
                    gapSmall,
                    Text(title,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    Text(subTitle,
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: AppColors.someText)),
                    gapSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.orange.withOpacity(.25)),
                          height: 40,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.location_on_sharp,
                                color: AppColors.orange,
                              ),
                              Text(location,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.orange))
                            ],
                          ),
                        ),
                        gapSmall,
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.orange.withOpacity(.25)),
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(duration,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.orange))),
                        gapSmall,
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.orange.withOpacity(.25)),
                            height: 40,
                            alignment: Alignment.center,
                            child: Text(salary,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.orange)))
                      ],
                    )
                  ],
                )),
            gapTiny,
            const Divider(
              color: AppColors.borderColor,
              height: 1,
              thickness: 1,
            ),
            gapTiny,
            const Text(
              'Description',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .4,
              child: const Text(
                'We are looking to appoint a Lecturer/Senior Lecturer in Filmmaking. Ideally, you should have experience of a creative approach to designing and delivering higher education curriculum at undergraduate and postgraduate levels in subject specific and interdisciplinary contexts. This role requires a versatile approach and ability to contribute to a vibrant and collaborative team that spans a wide range of digital arts disciplines, encompassing both academic and industry professionals.\nYou will be able to demonstrate an ability of critical and professional approaches to teaching, research or knowledge exchange in the areas of in one or more of the following areas of practice: producing, directing, cinematography, sound design, screenwriting, immersive practices (VR, AR, 360), installation, production design, editing.',
                style: TextStyle(
                    color: AppColors.someText,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            gapSmall,
            Center(
                child: CustomButton(
                    function: () {
                      Navigator.of(context).pushNamed(Application.routeName);
                    },
                    text: 'Apply now')),
            Gap(45.h)
          ],
        ),
      ),
    );
  }
}
