import 'package:company_cam/core/Text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CameraSetting extends StatelessWidget {
  const CameraSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        title: Text(
          'Camera Setting',
          style: TextStyles.h1
              ?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Image Quality',
                style: TextStyles.h1
                    ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ListTile(
                leading: Checkbox(
                  shape: CircleBorder(),
                  value: true,
                  activeColor: Colors.blue[900],
                  onChanged: (bool? selected) {},
                ),
                title: Text(
                  'Normal',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Smallest image size, use if concerned about data usage.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                leading: Checkbox(
                  shape: CircleBorder(),
                  value: false,
                  activeColor: Colors.blue[900],
                  onChanged: (bool? selected) {},
                ),
                title: Text(
                  'High',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Good quality, balances image quality and size.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                leading: Checkbox(
                  shape: CircleBorder(),
                  value: false,
                  activeColor: Colors.blue[900],
                  onChanged: (bool? selected) {},
                ),
                title: Text(
                  'Super Fine',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Better image quality, best for everyday use.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                leading: Checkbox(
                  shape: CircleBorder(),
                  value: false,
                  activeColor: Colors.blue[900],
                  onChanged: (bool? selected) {},
                ),
                title: Text(
                  'Ultra',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Best image quality, use if concerned about capturing best image.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              Text(
                'Image Aspect Ratio',
                style: TextStyles.h1
                    ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ListTile(
                leading: Checkbox(
                  shape: CircleBorder(),
                  value: true,
                  activeColor: Colors.blue[900],
                  onChanged: (bool? selected) {},
                ),
                title: Text(
                  '4:3',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                leading: Checkbox(
                  shape: CircleBorder(),
                  value: false,
                  activeColor: Colors.blue[900],
                  onChanged: (bool? selected) {},
                ),
                title: Text(
                  '16:9',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Text(
                'Video Quality',
                style: TextStyles.h1
                    ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ListTile(
                leading: Checkbox(
                  shape: CircleBorder(),
                  value: true,
                  activeColor: Colors.blue[900],
                  onChanged: (bool? selected) {},
                ),
                title: Text(
                  'HD ',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Standard video quality, best for every day use.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                leading: Checkbox(
                  shape: CircleBorder(),
                  value: false,
                  activeColor: Colors.blue[900],
                  onChanged: (bool? selected) {},
                ),
                title: Text(
                  '4K',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Best video quality, slower to upload.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Text(
                'More',
                style: TextStyles.h1
                    ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: true, onChanged: (v) {}),
                title: Text(
                  'Quick Caption',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Add a note to each photo as it is captured.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: false, onChanged: (v) {}),
                title: Text(
                  'Edit Mode',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Edit each photo as it is captured.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: false, onChanged: (v) {}),
                title: Text(
                  'Stamp date and time',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Photos have date/time permanently on image.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: false, onChanged: (v) {}),
                title: Text(
                  'Stamp GPS coordinates',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Photos have GPS coordinates permanently on image.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: false, onChanged: (v) {}),
                title: Text(
                  'Open to Camera',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Open to the camera when the app opens.',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: false, onChanged: (v) {}),
                title: Text(
                  'Save Images to Device',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Photos save to cloud and device',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: false, onChanged: (v) {}),
                title: Text(
                  'Save Videos to Device',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Videos save to cloud and device',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Divider(),
              ListTile(
                trailing: Switch(value: true, onChanged: (v) {}),
                title: Text(
                  'Full Lens Support',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  'Enable all supported camera lenses on this device',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
