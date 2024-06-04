import 'package:company_cam/core/Text_styles.dart';
import 'package:company_cam/screens/home/home_controller.dart';
import 'package:company_cam/screens/project_info/project_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CompanyFeedScreen extends StatefulWidget {
  const CompanyFeedScreen({super.key});

  @override
  _CompanyFeedScreenState createState() => _CompanyFeedScreenState();
}

class _CompanyFeedScreenState extends State<CompanyFeedScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const PhotosTab(),
    ProjectsTab(),
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
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              'Company Feed',
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.people,
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
              preferredSize: const Size(double.infinity, 60),
              child: Padding(
                padding: const EdgeInsets.only(right: 0.0),
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
                    const Tab(text: ""),
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

class PhotosTab extends StatelessWidget {
  const PhotosTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GetBuilder<HomeController>(builder: (controller) {
        return Column(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        'Yesterday . 24 May, 2024',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'United States',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 15.sp,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                            childAspectRatio:
                                Get.width / (Get.height - Get.height * 0.45),
                          ),
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Container(
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
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(10),
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
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        '24 May, 2024',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Islamabad',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 15.sp,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.black.withOpacity(0.3),
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
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'US',
                                                      style: TextStyles
                                                          .textStyle1
                                                          ?.copyWith(
                                                              fontSize: 12),
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
              ],
            ),
          ],
        );
      }),
    );
  }
}

class ProjectsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('press');
        Get.to(ProjectDetails());
      },
      child: GetBuilder<HomeController>(builder: (controller) {
        return
            // controller.image == null
            //     ?
            //     Padding(
            //         padding: const EdgeInsets.only(top: 30, left: 120),
            //         child: Text(
            //           'No Projects to load.',
            //           style: TextStyle(
            //             fontSize: 16.sp,
            //             color: Colors.grey,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       )
            //     :
            ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    title: Text('United States'),
                    subtitle:
                        Text('America, America • Vergenia, California ...'),
                    trailing: Icon(Icons.camera_alt),
                  ),
                  const Divider(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      '1 Photo . 0 Ducuments',
                      style: TextStyles.textStyle1?.copyWith(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: Get.height * 0.2,
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 10.0,
                              crossAxisSpacing: 10.0,
                              childAspectRatio:
                                  Get.width / (Get.height - Get.height * 0.3),
                            ),
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(PhotoEditorScreen());
                                },
                                child: Container(
                                    height: 100,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/dummy1.jpeg',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
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
                                                        ?.copyWith(
                                                            fontSize: 12),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '2D',
                                                style: TextStyles.textStyle
                                                    ?.copyWith(fontSize: 12),
                                              ),
                                            ],
                                          ),
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
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.star_border),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.more_horiz),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

class PhotoEditorScreen extends StatelessWidget {
  const PhotoEditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Username',
              style: TextStyles.textStyle,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 16.sp,
            ),
          ],
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.info_outline,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/house.png',
              height: Get.height * 0.65,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      'US',
                      style: TextStyles.textStyle,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User Name',
                      style: TextStyles.textStyle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '05/02/2024 . 3:45 PM',
                      style: TextStyles.textStyle?.copyWith(fontSize: 14.sp),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.05,
              child: TextField(
                style: TextStyles.textStyle?.copyWith(fontSize: 16.sp),
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.subject,
                      color: Colors.white,
                    ),
                    hintText: 'Add a description...',
                    hintStyle: TextStyles.textStyle?.copyWith(fontSize: 16.sp)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (builder) => addComment());
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.comment,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (builder) => addTag());
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.sell,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Container addComment() {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.close)),
                    Text(
                      'Comment',
                      style: TextStyles.h3,
                    ),
                    const SizedBox(),
                  ],
                ),
                const Divider(),
              ],
            ),
            Column(
              children: [
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: TextStyles.h4?.copyWith(color: Colors.grey),
                ),
                Text(
                  'Lorem ipsum dolor sit amet,',
                  style: TextStyles.h4?.copyWith(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: Get.height * 0.05,
                  child: TextField(
                    style: TextStyles.textStyle?.copyWith(fontSize: 16.sp),
                    decoration: InputDecoration(
                        suffixIcon: ElevatedButton(
                            onPressed: () {}, child: const Text('Post')),
                        hintText: 'Type to add comment...',
                        border: InputBorder.none,
                        hintStyle: TextStyles.textStyle1
                            ?.copyWith(fontSize: 17.sp, color: Colors.grey)),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '@',
                      style: TextStyles.h1?.copyWith(color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Container addTag() {
    return Container(
      height: Get.height * 0.9,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.close)),
                    Text(
                      'Tag',
                      style: TextStyles.h3,
                    ),
                    const SizedBox(),
                  ],
                ),
                const Divider(),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: Get.height * 0.05,
                  child: TextField(
                    style: TextStyles.textStyle?.copyWith(fontSize: 16.sp),
                    decoration: InputDecoration(
                        hintText: 'Find or create tag...',
                        border: OutlineInputBorder(),
                        hintStyle: TextStyles.textStyle1
                            ?.copyWith(fontSize: 17.sp, color: Colors.grey)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    List<String> lst = [
                      'Back Side',
                      'Left',
                      'Right',
                      'Top',
                      'Bottom',
                      'Top to Bottom'
                    ];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                                value: true, groupValue: -1, onChanged: (v) {}),
                            Text(
                              lst[index],
                              style: TextStyles.textStyle1,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.grey,
                          size: 18.sp,
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
