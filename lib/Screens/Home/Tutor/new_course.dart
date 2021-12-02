import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Widgets/curricullum.dart';
import 'package:kap/Widgets/introduction_widget.dart';
import 'package:kap/Widgets/review_submit.dart';

class NewCourse extends StatefulWidget {
  static const routeName = '/NewCourse';
  const NewCourse({Key? key}) : super(key: key);

  @override
  State<NewCourse> createState() => _NewCourseState();
}

class _NewCourseState extends State<NewCourse> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: AppColors.backgroundColor,
            elevation: 0,
            title: const Text(
              'Communication',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            bottom: const TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: AppColors.someText,
              indicatorColor: Colors.black,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
              tabs: [
                Text(
                  'Introduction',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Curriculum',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Review & Submit',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.orange),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            IntroductionWidget(),
            Curriculum(),
            ReviewSubmit(),
          ])),
    );
  }
}
