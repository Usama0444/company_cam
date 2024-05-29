import 'package:company_cam/screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationsPage extends StatefulWidget {
  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Notifications',
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.done_all,
                size: 30,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.settings,
                size: 30,
              ),
              onPressed: () {
                Get.to(SettingPage());
              },
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
            preferredSize: const Size(double.infinity, 80),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: TabBar(
                padding: const EdgeInsets.only(bottom: 10),
                controller: _tabController,
                isScrollable: true,
                indicator: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(25),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: _tabController.index == 0
                              ? Colors.transparent
                              : Colors.grey,
                        ),
                        color: _tabController.index == 0
                            ? Colors.transparent
                            : Colors.grey.shade100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.notifications,
                            color: _tabController.index == 0
                                ? Colors.white
                                : Colors.black,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'All',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: _tabController.index == 0
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: _tabController.index == 1
                              ? Colors.transparent
                              : Colors.grey,
                        ),
                        color: _tabController.index == 1
                            ? Colors.transparent
                            : Colors.grey.shade100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.assignment,
                            color: _tabController.index == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Assignments',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: _tabController.index == 1
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _tabController.index == 2
                              ? Colors.transparent
                              : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        color: _tabController.index == 2
                            ? Colors.transparent
                            : Colors.grey.shade100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.attribution,
                            color: _tabController.index == 2
                                ? Colors.white
                                : Colors.black,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Mentions',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: _tabController.index == 2
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _tabController.index == 3
                              ? Colors.transparent
                              : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        color: _tabController.index == 3
                            ? Colors.transparent
                            : Colors.grey.shade100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.comment,
                            color: _tabController.index == 3
                                ? Colors.white
                                : Colors.black,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Comments',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: _tabController.index == 3
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications,
                    size: 100,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'No new notifications',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'When you have new updates from your team, they\'ll show up here.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                'No new assignments',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'No new mentions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'No new comments',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
