import 'package:company_cam/core/Text_styles.dart';
import 'package:company_cam/screens/create/create_project_by_camera.dart';
import 'package:company_cam/screens/home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CameraCaptureScreen extends StatefulWidget {
  const CameraCaptureScreen({super.key});

  @override
  _CameraCaptureScreenState createState() => _CameraCaptureScreenState();
}

class _CameraCaptureScreenState extends State<CameraCaptureScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const TabsViewPages(),
    const TabsViewPages(),
    const TabsViewPages(),
    const TabsViewPages(),
    const TabsViewPages(),
  ];

  void _onItemTapped(int index) {
    if (index >= 0 && index <= 2) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
            title: Column(
              children: [
                Text(
                  'Capture',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  'Choose a Project',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 60),
              child: TabBar(
                labelPadding: const EdgeInsets.only(bottom: 10),
                tabs: <Widget>[
                  Text(
                    'NearBy',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Recent',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Offline',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Map',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )),
        body: TabBarView(
          children: _pages,
        ),
      ),
    );
  }
}

class TabsViewPages extends StatefulWidget {
  const TabsViewPages({super.key});

  @override
  State<TabsViewPages> createState() => _TabsViewPagesState();
}

class _TabsViewPagesState extends State<TabsViewPages> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            controller.image != null
                ? Container(
                    width: double.infinity,
                    height: Get.height * 0.12,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            child: Image.file(
                              controller.image!,
                              width: Get.width * 0.25,
                              height: double.infinity,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'United States',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width * 0.5,
                                  child: Text(
                                    'America,America ,Vergina,California,Vergina,California,Vergina,California',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '1 Photo',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Container(
                                      width: 1,
                                      height: 20,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      color: Colors.black,
                                    ),
                                    Text(
                                      '712831 California....',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 17.sp,
                          ),
                        ],
                      ),
                    ),
                  )
                : SizedBox(),
            Padding(
              padding: const EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: () async {
                  await controller.getImage();
                  Get.to(CreateProjectByCameraScreen());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(fontSize: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: const Size(250, 55)),
                child: Text(
                  '+ New Project',
                  style: TextStyles.textStyle?.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
