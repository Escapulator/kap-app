import 'dart:math';
import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Widgets/course_title.dart';

class ContentList extends StatefulWidget {
  final String title;
  final String subtitle;
  final int length;
  const ContentList(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.length})
      : super(key: key);

  @override
  State<ContentList> createState() => _ContentListState();
}

class _ContentListState extends State<ContentList> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            tileColor: AppColors.grey,
            title: Text(
              widget.title,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            subtitle: Text(
              widget.subtitle,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            trailing: IconButton(
                icon: Icon(expanded ? Icons.expand_less : Icons.expand_more),
                onPressed: () {
                  setState(() {
                    expanded = !expanded;
                  });
                })),
        if (expanded)
          SizedBox(
            height: min(widget.length * 20.0 + 10, 100),
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => const CourseTitle(
                      time: '2 mins',
                      title: '1. What\'s in this course?',
                    )),
          )
      ],
    );
  }
}
