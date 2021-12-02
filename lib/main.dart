import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kap/Constants/app_color.dart';
import 'package:kap/Model/auth_view_model.dart';
import 'package:kap/Screens/Auth/Tutor/timing.dart';
import 'package:kap/Screens/Auth/Tutor/tutor_interest.dart';
import 'package:kap/Screens/Auth/Tutor/work_title.dart';
import 'package:kap/Screens/Auth/create_profile.dart';
import 'package:kap/Screens/Auth/home.dart';
import 'package:kap/Screens/Auth/Student/interest.dart';
import 'package:kap/Screens/Auth/login.dart';
import 'package:kap/Screens/Auth/forgot_password.dart';
import 'package:kap/Screens/Auth/reset_password.dart';
import 'package:kap/Screens/Auth/select_user.dart';
import 'package:kap/Screens/Auth/sign_up.dart';
import 'package:kap/Screens/Auth/verify_email.dart';
import 'package:kap/Screens/Chats/Student/thread.dart';
import 'package:kap/Screens/Home/Student/course_content.dart';
import 'package:kap/Screens/Home/Student/order_summary.dart';
import 'package:kap/Screens/Home/Tutor/new_course.dart';
import 'package:kap/Screens/LiveStreams/Student/e_library_list.dart';
import 'package:kap/Screens/LiveStreams/Student/e_library_view.dart';
import 'package:kap/Screens/LiveStreams/Student/live_class_list.dart';
import 'package:kap/Screens/LiveStreams/Student/live_stream.dart';
import 'package:kap/Screens/Settings/Student/application.dart';
import 'package:kap/Screens/Settings/Student/financial_linkage.dart';
import 'package:kap/Screens/Settings/Student/job_board.dart';
import 'package:kap/Screens/Settings/Student/job_detail.dart';
import 'package:kap/Screens/navbar.dart';
import 'package:kap/Screens/splash_screen.dart';
import 'package:kap/Screens/tutor_navbar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthViewModel>(create: (_) => AuthViewModel()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 640),
          builder: () => MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                  scaffoldBackgroundColor: AppColors.backgroundColor,
                  textTheme: GoogleFonts.poppinsTextTheme(
                    Theme.of(context).textTheme,
                  ),
                ),
                debugShowCheckedModeBanner: false,
                home: const SplashScreen(),
                routes: {
                  Home.routeName: (BuildContext context) => const Home(),
                  SelectUser.routeName: (BuildContext context) =>
                      const SelectUser(),
                  SignUp.routeName: (BuildContext context) => const SignUp(),
                  VerifyEmail.routeName: (BuildContext context) =>
                      const VerifyEmail(),
                  Login.routeName: (BuildContext context) => const Login(),
                  ResetPassword.routeName: (BuildContext context) =>
                      const ResetPassword(),
                  ForgotPassword.routeName: (BuildContext context) =>
                      const ForgotPassword(),
                  CreateProfile.routeName: (BuildContext context) =>
                      const CreateProfile(),
                  Interest.routeName: (BuildContext context) =>
                      const Interest(),
                  NavBar.routeName: (BuildContext context) => const NavBar(),
                  CourseContent.routeName: (BuildContext context) =>
                      const CourseContent(),
                  OrderSummary.routeName: (BuildContext context) =>
                      const OrderSummary(),
                  Thread.routeName: (BuildContext context) => const Thread(),
                  LiveClassList.routeName: (BuildContext context) =>
                      const LiveClassList(),
                  LiveStream.routeName: (BuildContext context) =>
                      const LiveStream(),
                  ELibraryList.routeName: (BuildContext context) =>
                      const ELibraryList(),
                  ELibraryView.routeName: (BuildContext context) =>
                      const ELibraryView(),
                  JobBoard.routeName: (BuildContext context) =>
                      const JobBoard(),
                  JobDetail.routeName: (BuildContext context) =>
                      const JobDetail(),
                  Application.routeName: (BuildContext context) =>
                      const Application(),
                  Linkage.routeName: (BuildContext context) => const Linkage(),
                  WorkTitle.routeName: (BuildContext context) =>
                      const WorkTitle(),
                  TutorInterest.routeName: (BuildContext context) =>
                      const TutorInterest(),
                  Timing.routeName: (BuildContext context) => const Timing(),
                  TutorNavBar.routeName: (BuildContext context) =>
                      const TutorNavBar(),
                  NewCourse.routeName: (BuildContext context) =>
                      const NewCourse(),
                },
              )),
    );
  }
}
