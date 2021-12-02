import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Widgets/comments.dart';

class Thread extends StatelessWidget {
  static const routeName = '/Thread';
  const Thread({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //for now pass everything in the args, but later just use
    //id, and find by id method
    final List? type = ModalRoute.of(context)!.settings.arguments as List?;
    final String name = type![0];
    final String time = type[1];
    final String body = type[2];
    final String thumbUp = type[3];
    final String thumbdown = type[4];
    final String comments = type[5];
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar('Thread ', Colors.black),
      persistentFooterButtons: [
        TextFormField(
          decoration: InputDecoration(
              prefix: const CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg'),
              ),
              suffix: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Post',
                    style: TextStyle(
                      color: AppColors.orange,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              contentPadding: const EdgeInsets.only(left: 8, top: 15),
              hintText: 'Add a comment'),
          validator: (value) {
            return value!.isEmpty ? 'Enter your email address' : null;
          },
        ),
      ],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * .41,
                width: MediaQuery.of(context).size.width * 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            Text(name,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            Text(time,
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.someText)),
                          ],
                        )
                      ],
                    ),
                    gapTiny,
                    Text(body,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.someText)),
                    gapSmall,
                    Container(
                      height: MediaQuery.of(context).size.height * .2,
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
                        Text(thumbUp,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.someText)),
                        const Icon(Icons.arrow_upward),
                        Text(thumbdown,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.someText)),
                        const Icon(Icons.arrow_downward_sharp),
                        Text(comments,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.someText)),
                        const ImageIcon(AssetImage(AppAssets.chat))
                      ],
                    )
                  ],
                )),
            gapTiny,
            const Divider(
              color: Color(0xFFECECEC),
              thickness: 1,
            ),
            gapTiny,
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Column(
                        children: [
                          const Comments(
                              name: 'William Shawn',
                              thumbUp: '2',
                              thumbdown: '0',
                              body:
                                  'Continue new you declared differed learning \nbringing honoured. At mean mind so upon they \nrent am walk.',
                              chatCount: '4'),
                          gapSmall,
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }
}
