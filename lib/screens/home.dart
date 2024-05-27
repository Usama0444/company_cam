import 'package:company_cam/core/Text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/logo.png',
          width: 13.w,
        ),
        actions: [
          Container(
            width: 120,
            height: 35,
            margin: const EdgeInsets.only(
              right: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.cyan.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.cyan),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.bolt,
                  size: 20.sp,
                ),
                Text(
                  '14 days left!',
                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.group,
              size: 20.sp,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              size: 20.sp,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jump Back In',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              padding: const EdgeInsets.all(6),
              color: Colors.grey,
              strokeWidth: 1,
              child: Container(
                width: double.infinity,
                height: 70,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.photo_camera, size: 30.sp, color: Colors.blue),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text('Find projects where you recently took pictures.'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Nearby Projects   ',
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.add_location, color: Colors.blue),
                    const SizedBox(width: 4),
                    Text(
                      'New Project',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              padding: const EdgeInsets.all(6),
              color: Colors.grey,
              strokeWidth: 1,
              child: Container(
                width: double.infinity,
                height: 70,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.local_shipping, size: 30.sp, color: Colors.blue),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'No projects near you at the moment.',
                        style: TextStyles.textStyle1?.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Company Feed  ',
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.add_location, color: Colors.blue),
                    const SizedBox(width: 4),
                    Text(
                      'New Project',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              padding: const EdgeInsets.all(6),
              color: Colors.grey,
              strokeWidth: 1,
              child: Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Row(
                    children: [
                      Icon(Icons.business, size: 30.sp, color: Colors.blue),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'No Projects Yet.',
                              style: TextStyles.textStyle1?.copyWith(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Find the latest projects created at your company here.',
                              style: TextStyles.textStyle1?.copyWith(
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.add_location,
                        color: Colors.blue,
                        size: 25.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              padding: const EdgeInsets.all(6),
              color: Colors.grey,
              strokeWidth: 1,
              child: Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.photo,
                      color: Colors.blue,
                      size: 30.sp,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'No Projects Yet.',
                            style: TextStyles.textStyle1?.copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Every photo is mapped at your project location.',
                            style: TextStyles.textStyle1?.copyWith(
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.add_location,
                      color: Colors.blue,
                      size: 25.sp,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      const Text('photo'),
      const Text('camera'),
      const Text('notification'),
      const Text('account'),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.photo),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.notifications),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
