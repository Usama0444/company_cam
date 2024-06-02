import 'package:company_cam/core/Text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UploadSetting extends StatelessWidget {
  const UploadSetting({super.key});

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
          'Upload Setting',
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
              Divider(),
              ListTile(
                trailing: Switch(value: true, onChanged: (v) {}),
                title: Text(
                  'Allow backgrounds uploads',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'photos/videos will upload while app is hidden',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: true, onChanged: (v) {}),
                title: Text(
                  'Uplaod photos using cellular data',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'if off, photos only upload over wifi',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: true, onChanged: (v) {}),
                title: Text(
                  'Uplaod videos using cellular data',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'if off, videos only upload over wifi',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
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
