import 'package:company_cam/core/Text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LocationSetting extends StatelessWidget {
  const LocationSetting({super.key});

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
          'Location Settings',
          style: TextStyles.h1
              ?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Divider(),
                ListTile(
                  title: Text(
                    'Direction to Proejcts',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.7,
                        child: Text(
                          'Choose where to be directed when you select Get Direction.',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.blue),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Distance Units',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Miles',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.blue),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
