import 'package:flutter/material.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_dropdown.dart';
import 'package:kap/Widgets/note_tile.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapSmall,
          Material(
            color: AppColors.backgroundColor,
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: const ImageIcon(AssetImage(AppAssets.add)),
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
                  hintText: 'Create a note at 2:00'),
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
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => Column(
                      children: [
                        const NoteTile(
                          time: '1:34',
                          title:
                              'Screen fundamentals!  1. How to do \nsettings of your screen?',
                          body:
                              'I’ll practice this setting soon. Numbers to put are 13, 33 and 20',
                        ),
                        gapSmall,
                      ],
                    )),
          )
        ],
      ),
    );
  }
}
