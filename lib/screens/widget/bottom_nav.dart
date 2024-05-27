import 'package:company_cam/screens/home.dart';
import 'package:company_cam/screens/navbar_screen/account.dart';
import 'package:company_cam/screens/navbar_screen/camera_capture.dart';
import 'package:company_cam/screens/navbar_screen/company_feed.dart';
import 'package:company_cam/screens/navbar_screen/notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyBottomNavBar extends StatelessWidget {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      CompanyFeedScreen(),
      CameraCaptureScreen(),
      NotificationsPage(),
      AccountScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.home,
          size: 22.sp,
        ),
        activeColorPrimary: const Color.fromARGB(255, 5, 23, 43),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.photo_outlined,
          size: 22.sp,
        ),
        activeColorPrimary: const Color.fromARGB(255, 5, 23, 43),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.camera_alt,
          color: Colors.white,
          size: 23.sp,
        ),
        activeColorPrimary: Color.fromARGB(255, 30, 122, 228),
        inactiveColorPrimary: CupertinoColors.white,
        activeColorSecondary: const Color.fromARGB(255, 5, 23, 43),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.notifications_outlined,
          size: 22.sp,
        ),
        activeColorPrimary: const Color.fromARGB(255, 5, 23, 43),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.person_outline,
          size: 22.sp,
        ),
        activeColorPrimary: const Color.fromARGB(255, 5, 23, 43),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        navBarHeight: 60,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style15, // Choose the nav bar style with this property.
      ),
    );
  }
}
