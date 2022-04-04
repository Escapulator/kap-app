import 'package:flutter/material.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Screens/Chats/Student/thread.dart';

class CommunityWidget extends StatefulWidget {
  final String? name;
  final String? time;
  final String? body;
  final String? thumbUp;
  final String? thumbdown;
  final String? comments;
  const CommunityWidget(
      {Key? key,
      this.name,
      this.time,
      this.body,
      this.comments,
      this.thumbUp,
      this.thumbdown})
      : super(key: key);

  @override
  State<CommunityWidget> createState() => _CommunityWidgetState();
}

class _CommunityWidgetState extends State<CommunityWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(Thread.routeName, arguments: [
          widget.name,
          widget.time,
          widget.body,
          widget.thumbUp,
          widget.thumbdown,
          widget.comments,
        ]);
      },
      child: SizedBox(
          height: MediaQuery.of(context).size.height * .41,
          width: MediaQuery.of(context).size.width * 1,
          child: Material(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg'),
                      ),
                      gapSmall,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.name!,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          Text(widget.time!,
                              style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.someText)),
                        ],
                      )
                    ],
                  ),
                  gapTiny,
                 const Text(
                      'Continue new you declared differed learning bringing honoured. At mean mind so upon they rent am walk.',
                      style:  TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.someText)),
                  gapTiny,
                  Container(
                    height: MediaQuery.of(context).size.height * .18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  gapTiny,
                  Row(
                    children: [
                      Text(widget.thumbUp!,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.someText)),
                      const Icon(Icons.arrow_upward),
                      Text(widget.thumbdown!,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.someText)),
                      const Icon(Icons.arrow_downward_sharp),
                      Text(widget.comments!,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.someText)),
                      const ImageIcon(AssetImage(AppAssets.chat))
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
