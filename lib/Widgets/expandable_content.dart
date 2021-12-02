import 'package:flutter/material.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Widgets/content_list.dart';

class ExpandableContent extends StatelessWidget {
  const ExpandableContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          gapSmall,
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => Column(
                      children: [
                        ContentList(
                          title: index == 1
                              ? 'Section 2: Screen fundamentals'
                              : index == 2
                                  ? 'Section 3: Adjustments'
                                  : 'Section 1: Course introduction',
                          subtitle: '1/3 | 8 min ',
                          length: 3,
                        ),
                        gapSmall
                      ],
                    )),
          )
        ]));
  }
}
