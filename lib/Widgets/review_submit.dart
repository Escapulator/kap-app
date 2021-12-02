import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Widgets/payment_dialog.dart';
import 'package:kap/Widgets/radio.dart';

class ReviewSubmit extends StatefulWidget {
  const ReviewSubmit({Key? key}) : super(key: key);

  @override
  State<ReviewSubmit> createState() => _ReviewSubmitState();
}

class _ReviewSubmitState extends State<ReviewSubmit> {
  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapMedium,
          const Text(
            'Before submitting the course, please carefully review all of the content in each tab.',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.someText),
          ),
          gapSmall,
          const Text(
            'Course URL',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          gapTiny,
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor, width: 1)),
            child: Row(
              children: [
                Container(
                  height: 45,
                  width: 119,
                  decoration: BoxDecoration(
                      color: AppColors.orange.withOpacity(0.2),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8))),
                  alignment: Alignment.center,
                  child: const Text(
                    'www.kap.com',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.orange),
                  ),
                ),
                const SizedBox(
                  height: 45,
                  width: 260,
                  child: Center(child: Text('Learn-photoshop-from-be')),
                )
              ],
            ),
          ),
          gapSmall,
          const Text(
            'Choose to make it draft or public',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          gapTiny,
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RadioButton<String>(
                width: MediaQuery.of(context).size.width,
                value: 'Draft',
                groupValue: _groupValue,
                label: 'Draft',
                text: 'Draft',
                onChanged: _valueChangedHandler(),
              ),
              gapSmall,
              RadioButton<String>(
                width: MediaQuery.of(context).size.width,
                value: 'Public',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
                label: 'Public',
                text: 'Public',
              ),
            ],
          ),
          const Spacer(),
          Center(
            child: CustomButton(
                function: () {
                  showDialog(
                      context: context,
                      builder: (context) => const PaymentDialog(
                            image: Icons.check,
                            title: 'Course submitted',
                            subtitle:
                                'Your course has been successfully updated and submitted.',
                          ));
                },
                text: 'Submit'),
          ),
          gapMedium
        ],
      ),
    );
  }
}
