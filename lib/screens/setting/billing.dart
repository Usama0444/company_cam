import 'package:company_cam/core/Text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BillingScreen extends StatelessWidget {
  const BillingScreen({super.key});

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
          'Billing',
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
              Center(
                child: Text(
                  'User Name',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Current Plan',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                trailing: Text(
                  'Premium',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Max Projects',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                trailing: Text(
                  'Unlimted',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Video Capture/upload',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                trailing: Text(
                  'Yes',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Integrations',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                trailing: Text(
                  'Yes',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Active USer',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                trailing: Text(
                  '1',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Active Projects',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                trailing: Text(
                  '0',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Trial Ends',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                trailing: Text(
                  '2024-1-23',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Subscription renews',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                trailing: Text(
                  '2024-01-25',
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
