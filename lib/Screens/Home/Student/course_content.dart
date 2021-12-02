import 'package:flutter/material.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Widgets/announcement.dart';
import 'package:kap/Widgets/expandable_content.dart';
import 'package:kap/Widgets/notes.dart';
import 'package:kap/Widgets/overview.dart';
import 'package:kap/Widgets/qna.dart';

class CourseContent extends StatefulWidget {
  static const routeName = '/CourseContent';
  const CourseContent({Key? key}) : super(key: key);

  @override
  _CourseContentState createState() => _CourseContentState();
}

class _CourseContentState extends State<CourseContent>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 5, vsync: this);
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar('Digital Learning', Colors.black),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              AppAssets.video,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 50,
            child: TabBar(
              controller: _controller,
              isScrollable: true,
              tabs: const [
                Text(
                  'Course content',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Overview',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Q/A',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text('Notes',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
                Text('Accouncement',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
              ],
              labelColor: Colors.black,
              unselectedLabelColor: AppColors.someText,
              indicatorColor: Colors.black,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 9),
            ),
          ),
          Expanded(
            child: TabBarView(controller: _controller, children: const [
              ExpandableContent(),
              Overview(),
              QnA(),
              Notes(),
              Announcement()
            ]),
          )
        ],
      ),
    );
  }
}
