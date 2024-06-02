import 'package:company_cam/core/Text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AssignProject extends StatelessWidget {
  const AssignProject({super.key});

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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'UserName',
                    style: TextStyles.textStyle1?.copyWith(
                        fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Last activity ,28 may, 2024',
                    style: TextStyles.textStyle1?.copyWith(fontSize: 14.sp),
                  ),
                ],
              ),
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade300,
                ),
                child: Center(
                  child: Text(
                    'TS',
                    style: TextStyles.h2,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (builder) => AddUsersSheet());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        textStyle: const TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        fixedSize: const Size(180, 55)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.add_circle_outline,
                          size: 30,
                        ),
                        Text(
                          'Add Users',
                          style: TextStyles.textStyle?.copyWith(
                              fontSize: 18.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AddUsersSheet extends StatefulWidget {
  @override
  _AddUsersSheetState createState() => _AddUsersSheetState();
}

class _AddUsersSheetState extends State<AddUsersSheet>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.close)),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              'Assign Project',
              style: TextStyles.textStyle1?.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Assign',
              style: TextStyles.textStyle1?.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              isScrollable: true,
              tabs: const [
                Tab(text: 'Users'),
                Tab(text: 'Group'),
              ],
            ),
            Divider(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  TasksTab(),
                  TasksTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Search...',
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20.sp,
                  ),
                  // labelStyle: TextStyles.h2,
                ),
              ),
            ),
            Icon(
              Icons.person,
              size: 40.sp,
            ),
            SizedBox(
              width: Get.width * 0.8,
              child: Text(
                'Assign Multiple Users with Groups',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: Get.width * 0.8,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
