import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_assets.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Model/auth_view_model.dart';
import 'package:kap/Screens/Auth/Student/interest.dart';
import 'package:kap/Screens/Auth/Tutor/work_title.dart';
import 'package:kap/Shared/custom_appbar.dart';
import 'package:kap/Shared/custom_button.dart';
import 'package:kap/Shared/custom_form.dart';
import 'package:kap/Widgets/radio.dart';
import 'package:provider/provider.dart';

class CreateProfile extends StatefulWidget {
  static const routeName = '/CreateProfile';
  const CreateProfile({Key? key}) : super(key: key);

  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('', Colors.orange),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapMedium,
              const Text(
                'Let’s create your profile',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              gapSmall,
              SizedBox(
                width: 90,
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://st3.depositphotos.com/26815962/37748/i/1600/depositphotos_377485776-stock-photo-cute-girl-grabbing-dry-leaf.jpg'),
                    ),
                    Positioned(
                        left: 65,
                        child: Container(
                          height: 40,
                          decoration: const ShapeDecoration(
                              color: Color(0xFFF1F2F2), shape: CircleBorder()),
                          child: const ImageIcon(AssetImage(AppAssets.edit)),
                        ))
                  ],
                ),
              ),
              gapSmall,
              const CustomForm(
                hintText: 'First name',
              ),
              gapSmall,
              const CustomForm(
                hintText: 'Last name',
              ),
              gapSmall,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RadioButton<String>(
                    width: MediaQuery.of(context).size.width * .4,
                    value: 'Male',
                    groupValue: _groupValue,
                    label: 'Male',
                    text: 'Male',
                    onChanged: _valueChangedHandler(),
                  ),
                  RadioButton<String>(
                    width: MediaQuery.of(context).size.width * .4,
                    value: 'Female',
                    groupValue: _groupValue,
                    onChanged: _valueChangedHandler(),
                    label: 'Female',
                    text: 'Female',
                  ),
                ],
              ),
              gapSmall,
              const CustomForm(
                hintText: 'Phone number',
              ),
              gapSmall,
              const CustomForm(
                hintText: 'Country',
              ),
              gapSmall,
              const CustomForm(
                hintText: 'State',
              ),
              gapLarge,
              gapLarge,
              CustomButton(
                  function: () {
                    Provider.of<AuthViewModel>(context, listen: false)
                                .userType ==
                            'Instructor'
                        ? Navigator.of(context).pushNamed(WorkTitle.routeName)
                        : Navigator.of(context).pushNamed(Interest.routeName);
                  },
                  text: 'Next')
            ],
          ),
        ),
      ),
    );
  }
}
