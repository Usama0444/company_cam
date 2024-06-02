import 'package:company_cam/core/Text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        title: Text(
          'Notification Setting',
          style: TextStyles.h1
              ?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I\'d like to receive the notifications...',
                style: TextStyles.h1
                    ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: true, onChanged: (v) {}),
                title: Text(
                  'As emails',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: false, onChanged: (v) {}),
                title: Text(
                  'As mobile push notifications',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              Divider(),
              Text(
                'Send me notifications when someone...',
                style: TextStyles.h1
                    ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: false, onChanged: (v) {}),
                title: Text(
                  'comments on phone i\vw taken',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: false, onChanged: (v) {}),
                title: Text(
                  'comments on photon/projects i\ve commentd on..',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
