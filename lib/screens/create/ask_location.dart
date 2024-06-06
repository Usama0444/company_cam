import 'package:company_cam/screens/widget/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AskLocation extends StatelessWidget {
  const AskLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                'How would you like to start?',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Scaffold(
                      appBar: AppBar(),
                      body: SizedBox(
                          child: Image.asset(
                        'assets/map.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.fill,
                      ))));
                },
                child: Container(
                  width: double.infinity,
                  height: 10.h,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue[700],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                      ),
                      Text(
                        'Enter a job Location',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(MyBottomNavBar());
                },
                child: Container(
                  width: double.infinity,
                  height: 10.h,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue[700],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.map,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                      ),
                      Text(
                        'Explore on my Own',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
