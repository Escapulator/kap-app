import 'package:flutter/material.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Widgets/tutor_announcement.dart';
import 'package:kap/Widgets/tutor_qna.dart';

class Communication extends StatefulWidget {
  const Communication({Key? key}) : super(key: key);

  @override
  State<Communication> createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication>
    with SingleTickerProviderStateMixin {
  /* TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
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
 */
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
              //isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: AppColors.someText,
              indicatorColor: Colors.black,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
              tabs: [
                Text(
                  'Q&A',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Announcement',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            TutorQNA(),
            TutorAnnouncement(),
          ])),
    );
  }
}
