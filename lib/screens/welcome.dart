import 'package:company_cam/core/Text_styles.dart';
import 'package:company_cam/screens/login.dart';
import 'package:company_cam/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(flex: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: Get.height * 0.08,
                  width: Get.height * 0.08,
                  fit: BoxFit.fill,
                ),
                Text(
                  'AVR quality control',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Spacer(flex: 2),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/company_logo.jpg',
                    ),
                  ), // Your logo here
                  const SizedBox(height: 20),
                  SizedBox(
                    width: Get.width * 0.7,
                    child: Text(
                      'Capture, organize, and share job photos from anywhere.',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 3),
            ElevatedButton(
              onPressed: () {
                Get.to(SignUpScreen());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  fixedSize: const Size(double.infinity, 55)),
              child: Text(
                'Get Started for Free',
                style: TextStyles.textStyle?.copyWith(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Get.to(LoginScreen());
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  fixedSize: const Size(double.infinity, 55)),
              child: Text(
                'Sign In',
                style: TextStyles.textStyle1?.copyWith(
                  fontSize: 18.sp,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
