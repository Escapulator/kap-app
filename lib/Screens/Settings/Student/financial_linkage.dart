import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Widgets/linkage_widget.dart';

class Linkage extends StatelessWidget {
  static const routeName = '/Linkage';
  const Linkage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: appBar(title, Colors.black),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
        child: ListView.builder(
            itemCount: 9,
            itemBuilder: (context, index) => Column(
                  children: [
                    LinkageWidget(
                      link: 'https://tinyurl.com/5ewm2f2j',
                      textButton: index.isOdd ? 'Applied' : 'Apply now',
                      title: 'Scholarships for student',
                    ),
                    gapSmall
                  ],
                )),
      ),
    );
  }
}
