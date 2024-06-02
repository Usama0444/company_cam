import 'package:company_cam/core/Text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ManageAccounts extends StatelessWidget {
  const ManageAccounts({super.key});

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
          'Manage Accounts',
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
                'Multiple Accounts',
                style: TextStyles.h1
                    ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Divider(),
              SizedBox(
                width: Get.width * 0.9,
                child: Text(
                  'If you have multiple accounts with multiple companies, you can sign into them simultaneously and quickly switchto the one you need.',
                  textAlign: TextAlign.justify,
                  style: TextStyles.h1?.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              Text(
                'Accounts Signed In',
                style: TextStyles.h1
                    ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          textStyle: const TextStyle(fontSize: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fixedSize: const Size(double.infinity, 55)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Add Account',
                            style: TextStyles.h3?.copyWith(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              ListTile(
                trailing: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue[900],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.done,
                      size: 20.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                title: Text(
                  'UserNAme',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'example@gmail.com\nusername',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade200,
                  ),
                  child: Center(
                      child: Text(
                    'TS',
                    style: TextStyles.textStyle1?.copyWith(fontSize: 20.sp),
                  )),
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
