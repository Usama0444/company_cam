import 'package:company_cam/screens/navbar_screen/account.dart';
import 'package:company_cam/screens/navbar_screen/company_feed.dart';
import 'package:company_cam/screens/company_login.dart';
import 'package:company_cam/screens/create/ask_location.dart';
import 'package:company_cam/screens/create/business_types.dart';
import 'package:company_cam/screens/create/yourself.dart';
import 'package:company_cam/screens/home.dart';
import 'package:company_cam/screens/navbar_screen/camera_capture.dart';
import 'package:company_cam/screens/navbar_screen/notification.dart';
import 'package:company_cam/screens/signup.dart';
import 'package:company_cam/screens/welcome.dart';
import 'package:company_cam/screens/widget/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ResponsiveSizer(builder: (context, o, index) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
      );
    });
  }
}
