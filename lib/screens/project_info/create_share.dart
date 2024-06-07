import 'package:company_cam/core/Text_styles.dart';
import 'package:company_cam/screens/widget/filter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CreateShareScreen extends StatelessWidget {
  const CreateShareScreen({super.key});

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
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Islamabad'.toUpperCase(),
              style: TextStyles.textStyle1?.copyWith(fontSize: 14.sp),
            ),
            Text(
              'Photos(1)'.toUpperCase(),
              style: TextStyles.textStyle1
                  ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 30),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward,
                        size: 20.sp,
                        color: Colors.blue,
                      ),
                      Text(
                        'Create/Share',
                        style: TextStyles.h3
                            ?.copyWith(fontSize: 14.sp, color: Colors.blue),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.done,
                        size: 20.sp,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              builder: (builder) => FilterProjectsButton());
                        },
                        child: Icon(
                          Icons.filter_alt,
                          size: 20.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
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
                                                color: Colors.black
                                                    .withOpacity(0.3),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        showEditInfoBottomSheet(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          textStyle: const TextStyle(fontSize: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          fixedSize: const Size(200, 55)),
                      child: Row(
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
                        ],
                      )),
                ],
              ),
            ]),
      ),
    );
  }

  void showEditInfoBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: EditInfo(),
        );
      },
    );
  }
}

class EditInfo extends StatefulWidget {
  const EditInfo({super.key});

  @override
  State<EditInfo> createState() => _EditInfoState();
}

class _EditInfoState extends State<EditInfo> {
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
