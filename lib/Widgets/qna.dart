import 'package:flutter/material.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_dropdown.dart';
import 'package:kap/Widgets/qnatile.dart';

class QnA extends StatefulWidget {
  const QnA({Key? key}) : super(key: key);

  @override
  _QnAState createState() => _QnAState();
}

class _QnAState extends State<QnA> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapSmall,
          Material(
            color: AppColors.backgroundColor,
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: const ImageIcon(AssetImage(AppAssets.qna)),
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
                  hintText: 'Search all course questions'),
              validator: (value) {
                return value!.isEmpty ? 'Enter your email address' : null;
              },
            ),
          ),
          gapSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * .4,
                child: const CustomDropDown(
                  value1: 'All lectures',
                  value2: 'Current lectures',
                ),
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * .4,
                child: const CustomDropDown(
                  value1: 'Recommened',
                  value2: 'Most recent',
                ),
              )
            ],
          ),
          gapSmall,
          const Text(
            'All questions in this lecture',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
          ),
          gapSmall,
          ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) => Column(
                    children: [
                      const QNATile(
                        time: 'EL',
                        title:
                            'How can we manullay control screen by 1:0 \ncontrast?',
                        chatCount: '3',
                        up: '0',
                      ),
                      gapSmall
                    ],
                  )),
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
                  hintText: 'Ask a new question'),
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
