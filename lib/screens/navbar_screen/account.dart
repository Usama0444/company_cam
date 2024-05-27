import 'package:company_cam/screens/profile_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Padding(
      padding: const EdgeInsets.only(top: 30, left: 120),
      child: Text(
        'No Photos to load.',
        style: TextStyle(
          fontSize: 16.sp,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 30, left: 120),
      child: Text(
        'No Projects to load.',
        style: TextStyle(
          fontSize: 16.sp,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 30, left: 120),
      child: Text(
        'No Reports to load.',
        style: TextStyle(
          fontSize: 16.sp,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
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
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: GestureDetector(
              onTap: () {
                Get.to(ProfilePage());
              },
              child: Row(
                children: [
                  Text(
                    'Lorum Ipsum',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  )
                ],
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size(double.infinity, 60),
              child: Padding(
                padding: EdgeInsets.only(right: 0.0),
                child: TabBar(
                  tabs: <Widget>[
                    Text(
                      'Photos',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Projects',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Reports',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Tab(text: ""),
                  ],
                ),
              ),
            )),
        body: TabBarView(
          children: _pages,
        ),
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: Colors.white,
          onPressed: () {
            // Action for floating button
            _onItemTapped(0); // Set to Photos tab
          },
          child: Icon(
            Icons.filter_alt,
            size: 22.sp,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
