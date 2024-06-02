import 'package:company_cam/core/Text_styles.dart';
import 'package:company_cam/screens/project_info/collaburattors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'Assign.dart';

class ProjectDetails extends StatefulWidget {
  @override
  _ProjectDetailsState createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
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
        actions: [
          IconButton(
            icon: const Icon(Icons.star_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 20),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Islamabad',
                  style: TextStyles.h2,
                ),
              ],
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.location_on_outlined),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Lorum alpsum,abc,xyz',
                  style: TextStyles.textStyle2,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(Icons.description),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Add description....',
                  style: TextStyles.textStyle2,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(Icons.attach_money),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Payment',
                  style: TextStyles.textStyle2,
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 40,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 238, 233, 187),
                  ),
                  child: Center(child: Text('New', style: TextStyles.h4)),
                ),
              ],
            ),
            MyCustomTabs(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio:
                            Get.width / (Get.height - Get.height * 0.45),
                      ),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                              height: 100,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/dummy.jpeg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey,
                                  )),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  index == 0
                                      ? Column(
                                          children: [
                                            SizedBox(
                                              height: 25.sp,
                                            ),
                                            Icon(
                                              Icons.play_arrow,
                                              size: 30.sp,
                                              color: Colors.white,
                                            ),
                                          ],
                                        )
                                      : const SizedBox(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'US',
                                                  style: TextStyles.textStyle1
                                                      ?.copyWith(fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              isScrollable: true,
              tabs: const [
                Tab(text: 'Tasks'),
                Tab(text: 'Pages'),
                Tab(text: 'Checklists'),
                Tab(text: 'Reports'),
                Tab(text: 'Documents'),
              ],
            ),
            Divider(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  TasksTab(),
                  TasksTab(),
                  TasksTab(),
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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'Add Task to help keep your project to track...',
              style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, size: 22.sp, color: Colors.blue),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Add Task',
                  style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ],
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
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fixedSize: const Size(200, 55)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.add_circle_outline,
                      size: 30,
                    ),
                    Icon(
                      Icons.camera_alt,
                      size: 30,
                    ),
                    Icon(
                      Icons.comment_bank_outlined,
                      size: 30,
                    ),
                  ],
                )),
          ],
        ),
      ],
    );
  }
}

class MyCustomTabs extends StatefulWidget {
  @override
  _MyCustomTabsState createState() => _MyCustomTabsState();
}

class _MyCustomTabsState extends State<MyCustomTabs> {
  int selectedIndex = -1;
  List<String> strings = ['Assign', 'Contact', 'Label', 'Collaborators'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 35,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                if (index == 0) {
                  Get.to(AssignProject());
                } else if (index == 1) {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20.0)),
                    ),
                    builder: (BuildContext context) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: ProjectContact(),
                      );
                    },
                  );
                } else if (index == 2) {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => LabelBottomSheet(),
                  );
                } else if (index == 3) {
                  Get.to(CollaburatorsScreen());
                }
              },
              child: Container(
                width: index != 3 ? 100 : 130,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? Colors.blue[900]
                      : Colors.transparent,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.all_inbox,
                          size: 18.sp,
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.black),
                      Text(
                        strings[index],
                        style: TextStyles.textStyle2?.copyWith(
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProjectContact extends StatefulWidget {
  const ProjectContact({super.key});

  @override
  State<ProjectContact> createState() => _ProjectContactState();
}

class _ProjectContactState extends State<ProjectContact> {
  bool _switch = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.7,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 20,
                        ),
                      ),
                      Text(
                        'Project Contact',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox()
                    ],
                  ),
                ),
                Divider(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Contact Name',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Guest Address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Switch(
                        value: _switch,
                        onChanged: (v) {
                          setState(() {
                            _switch = v;
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_2_outlined,
                      size: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        'Send homeowners to link a web pagewhere they can addand view photos--noting else.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Divider(
                  height: 20,
                ),
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
                        child: Text(
                          'Add Contact',
                          style: TextStyles.h3?.copyWith(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LabelBottomSheet extends StatefulWidget {
  @override
  _LabelBottomSheetState createState() => _LabelBottomSheetState();
}

class _LabelBottomSheetState extends State<LabelBottomSheet> {
  final List<String> _labels = [
    'Active',
    'Bid',
    'Complete',
    'Important',
    'In Progress'
  ];
  final Map<String, Color> _labelColors = {
    'Active': Colors.green,
    'Bid': Colors.blue,
    'Complete': Colors.grey,
    'Important': Colors.orange,
    'In Progress': Colors.yellow,
  };
  final Set<String> _selectedLabels = Set<String>();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        height: 400.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
                Spacer(),
                Text(
                  'Labels',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                SizedBox(),
              ],
            ),
            Divider(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        textStyle: const TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.black),
                        ),
                        fixedSize: const Size(double.infinity, 55)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle_outline,
                          size: 30,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Create New Label',
                          style: TextStyles.h3?.copyWith(
                            color: Colors.blue[700],
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
            SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                children: _labels
                    .map(
                        (label) => _buildLabelItem(label, _labelColors[label]!))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabelItem(String label, Color color) {
    return ListTile(
      title: Row(
        children: [
          Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(40)),
              child: Center(
                  child: Text(
                label,
                style: TextStyles.textStyle,
              ))),
        ],
      ),
      leading: Checkbox(
        shape: CircleBorder(),
        value: _selectedLabels.contains(label),
        onChanged: (bool? selected) {
          setState(() {
            if (selected == true) {
              _selectedLabels.add(label);
            } else {
              _selectedLabels.remove(label);
            }
          });
        },
      ),
    );
  }
}
