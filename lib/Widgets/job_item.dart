import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Settings/Student/job_detail.dart';

class JobItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final String body;
  final String location;
  final String duration;
  final String salary;
  const JobItem(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.body,
      required this.location,
      required this.duration,
      required this.salary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(JobDetail.routeName,
            arguments: [title, subTitle, body, location, duration, salary]);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width,
        child: Material(
          elevation: 8,
          color: AppColors.backgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg'),
                    ),
                    gapSmall,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                      ],
                    )
                  ],
                ),
                gapSmall,
                Text(body,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                gapSmall,
                Row(
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
            ),
          ),
        ),
      ),
    );
  }
}
