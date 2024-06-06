import 'package:company_cam/core/Text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CollaburatorsScreen extends StatelessWidget {
  const CollaburatorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            size: 20.sp,
          ),
        ),
        title: Column(
          children: [
            Text(
              'Islamabad'.toUpperCase(),
              style: TextStyles.textStyle1?.copyWith(fontSize: 14.sp),
            ),
            Text(
              'Collaborators',
              style: TextStyles.textStyle1
                  ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_circle_outline,
              size: 30,
              color: Colors.blue,
            ),
          )
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              height: Get.height * 0.36,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.graphic_eq,
                      size: 40.sp,
                      color: Colors.grey,
                    ),
                    Text(
                      'Invite a sub / company',
                      style: TextStyles.textStyle1?.copyWith(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        textAlign: TextAlign.center,
                        style: TextStyles.textStyle1?.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              textStyle: const TextStyle(fontSize: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              fixedSize:
                                  Size(Get.width * 0.5, Get.height * 0.06)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 20.sp,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Collaborators',
                                style: TextStyles.h3?.copyWith(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: Get.height * 0.36,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.graphic_eq,
                      size: 40.sp,
                      color: Colors.grey,
                    ),
                    Text(
                      'Invite a client / HomeOwner',
                      style: TextStyles.textStyle1?.copyWith(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        textAlign: TextAlign.center,
                        style: TextStyles.textStyle1?.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              textStyle: const TextStyle(fontSize: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              fixedSize:
                                  Size(Get.width * 0.5, Get.height * 0.06)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.add,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Project Contact',
                                style: TextStyles.h3?.copyWith(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
