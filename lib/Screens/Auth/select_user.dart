import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Constants/ui_helper.dart';
import 'package:kap/Model/auth_view_model.dart';
import 'package:kap/Screens/Auth/login.dart';
import 'package:kap/Screens/Auth/sign_up.dart';
import 'package:provider/provider.dart';

class SelectUser extends StatefulWidget {
  static const routeName = '/user';
  const SelectUser({Key? key}) : super(key: key);

  @override
  State<SelectUser> createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  bool isInit = true;
  String? text;
  String? button;
  String? userType;
  @override
  void didChangeDependencies() {
    if (isInit == true) {
      final List? type = ModalRoute.of(context)!.settings.arguments as List?;
      text = type![0];
      button = type[1];
      setState(() {
        isInit == false;
        userType = type[0];
      });
      super.didChangeDependencies();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text!,
                  style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                gapSmall,
                SizedBox(
                  height: 35.h,
                  width: MediaQuery.of(context).size.width * .9,
                  child: ElevatedButton(
                    child: const Text(
                      'Sign up',
                    ),
                    onPressed: () {
                      Provider.of<AuthViewModel>(context, listen: false)
                          .userTypes(key: text);
                      Navigator.of(context).pushNamed(SignUp.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: AppColors.orange,
                        onPrimary: AppColors.backgroundColor),
                  ),
                ),
                gapMedium,
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                gapTiny,
                SizedBox(
                  height: 35.h,
                  width: MediaQuery.of(context).size.width * .9,
                  child: OutlinedButton(
                      child: const Text('Login'),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(Login.routeName, arguments: text);
                      },
                      style: OutlinedButton.styleFrom(
                          primary: AppColors.orange,
                          side: const BorderSide(color: AppColors.orange))),
                ),
              ],
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * .9,
              left: MediaQuery.of(context).size.width * .3,
              right: MediaQuery.of(context).size.width * .3,
              child: TextButton(
                onPressed: () {
                  if (text == 'As a student' && button == 'Switch to Tutor') {
                    setState(() {
                      text = 'As an Instructor';
                      button = 'Switch to Student';
                      userType = text;
                    });
                  } else {
                    setState(() {
                      text = 'As a student';
                      button = 'Switch to Tutor';
                      userType = text;
                    });
                  }
                },
                child: Text(
                  button!,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
                style: TextButton.styleFrom(primary: AppColors.orange),
              ))
        ],
      ),
    );
  }
}
