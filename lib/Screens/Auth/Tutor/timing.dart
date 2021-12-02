import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/tutor_navbar.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Widgets/timing_widget.dart';

class Timing extends StatefulWidget {
  static const routeName = '/Timing';
  const Timing({Key? key}) : super(key: key);

  @override
  State<Timing> createState() => _TimingState();
}

class _TimingState extends State<Timing> {
  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar('', AppColors.orange),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapSmall,
            const Text(
              'How much time can you spend creating your course per week?',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            gapSmall,
            const Text(
              'There\'s no wrong answer. We can help you achieve your goals even if you don\'t have much time.',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.someText),
            ),
            gapSmall,
            TimingWidget(
              value: '0-2 hours',
              groupValue: _groupValue,
              label: '0-2 hours',
              text: 'I’m very busy right now (0-2 hours)',
              onChanged: _valueChangedHandler(),
            ),
            gapSmall,
            TimingWidget(
              value: '2-4 hours',
              groupValue: _groupValue,
              label: '2-4 hours',
              text: 'I’ll work on this on the side (2-4 hours)',
              onChanged: _valueChangedHandler(),
            ),
            gapSmall,
            TimingWidget(
              value: '5+ hours',
              groupValue: _groupValue,
              label: '5+ hours',
              text: 'I have lots of flexibility (5+ hours)',
              onChanged: _valueChangedHandler(),
            ),
            gapSmall,
            TimingWidget(
              value: 'unknown',
              groupValue: _groupValue,
              label: 'unknown',
              text: 'I haven’t yet decided if I have time',
              onChanged: _valueChangedHandler(),
            ),
            const Spacer(),
            CustomButton(
                function: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      TutorNavBar.routeName, (route) => false);
                },
                text: 'Create course'),
            gapMedium
          ],
        ),
      ),
    );
  }
}
