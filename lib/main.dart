import 'package:company_cam/screens/project_info/project_detail.dart';
import 'package:company_cam/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ResponsiveSizer(builder: (context, o, index) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(
                color: Colors.black), // optional: to set icon colors
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 20), // optional: to set title text style
          ),
        ),
        home: WelcomeScreen(),
      );
    });
  }
}
//
