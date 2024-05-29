import 'package:company_cam/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.close,
            size: 30,
          ),
        ),
        title: Text(
          'Setting',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(left: 15.sp, top: 20),
          child: Row(
            children: [
              Text(
                'Preferences',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Divider(),
        commonWidget(title: 'Camera'),
        const Divider(),
        commonWidget(title: 'Location'),
        const Divider(),
        commonWidget(title: 'Notification'),
        const Divider(),
        commonWidget(title: 'Open Device Setting'),
        const Divider(),
        commonWidget(title: 'Uploads'),
        const Divider(),
        Padding(
          padding: EdgeInsets.only(left: 15.sp, top: 20),
          child: Row(
            children: [
              Text(
                'About',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Divider(),
        commonWidget(title: 'Billing'),
        const Divider(),
        commonWidget(title: 'Manage Accounts'),
        const Divider(),
        commonWidget(title: 'Stored Resources'),
        const Divider(),
        commonWidget(title: 'Technical'),
        const Divider(),
        Padding(
          padding: EdgeInsets.only(left: 15.sp, top: 20),
          child: Row(
            children: [
              Text(
                'Help',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Divider(),
        commonWidget(title: 'Chat with Support'),
        const Divider(),
        commonWidget(title: 'Help Center'),
        const Divider(),
        commonWidget(title: 'Reporting Content'),
        const Divider(),
        commonWidget(title: 'Delete Account'),
        const Divider(),
        Padding(
          padding: EdgeInsets.only(left: 15.sp, top: 20),
          child: Row(
            children: [
              Text(
                'Legal',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Divider(),
        commonWidget(title: 'Licenses'),
        const Divider(),
        commonWidget(title: 'Privacy Policy'),
        const Divider(),
        commonWidget(title: 'Terms of Use'),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.grey),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      fixedSize: const Size(double.infinity, 55)),
                  child: Text(
                    'Send Diagnostics',
                    style: TextStyle(
                      color: Color.fromARGB(255, 67, 65, 65),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(WelcomeScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      side: BorderSide(color: Colors.red),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      fixedSize: const Size(double.infinity, 55)),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                      color: Color.fromARGB(255, 216, 213, 213),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Version :9.0.2, Build :2023423',
              style: TextStyle(
                color: Color.fromARGB(255, 77, 76, 76),
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.copy,
              size: 18.sp,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ]),
    );
  }

  commonWidget({title}) {
    return ListTile(
      onTap: () {},
      leading: Text(
        title,
        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.normal),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 20,
      ),
    );
  }
}
