import 'package:company_cam/core/Text_styles.dart';
import 'package:company_cam/screens/edit_company_info.dart';
import 'package:company_cam/screens/edit_profile_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.close,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: Text(
          'My Info',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Switch profile action
            },
            child: const Text(
              'Switch',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildProfileHeader(),
            const Divider(
              height: 20,
              thickness: 2,
            ),
            _buildSection('Account Info', [
              _buildInfoRow('Email Address', 'wait@gmail.com'),
              _buildInfoRow('Password', '**********'),
            ], () {
              showEditInfoBottomSheet(context);
            }),
            const Divider(
              height: 20,
              thickness: 2,
            ),
            _buildSection('Profile Info', [
              _buildInfoRow('Full name', 'JNsnS Shshs'),
              _buildInfoRow('Phone Number', '03686486469'),
              _buildInfoRow('Job Title', ''),
              _buildInfoRow('T-shirt Size', ''),
            ], () {
              Get.to(EditProfileInfo());
            }),
            const Divider(
              height: 20,
              thickness: 2,
            ),
            _buildSection('Company Info', [
              _buildInfoRow('Company Name', 'Hhh'),
            ], () {
              Get.to(EditCompanyInfo());
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: 50,
              height: 50,
            ),
            const CircleAvatar(
              radius: 40,
              backgroundColor: Color.fromARGB(255, 214, 212, 212),
              child: Icon(Icons.person, size: 40),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 6, 90, 216),
                ),
                child: const Center(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('subname'),
          ],
        ),
      ],
    );
  }

  Widget _buildSection(
      String title, List<Widget> children, VoidCallback onEdit) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: onEdit,
              child: Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.edit,
                        size: 20,
                      ),
                      Text(
                        'Edit',
                        style: TextStyles.textStyle1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(children: children),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(label),
      subtitle: const Text('Loram ipsum'),
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
  bool obsc = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.lock_outline,
              size: 30.sp,
              color: Colors.grey,
            ),
            Text(
              'Confirm your password to edit your info!.',
              style: TextStyles.h2?.copyWith(
                fontWeight: FontWeight.normal,
                fontSize: 17.sp,
                color: Colors.grey,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: InputBorder.none,
                  // labelStyle: TextStyles.h2,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obsc = !obsc;
                      });
                    },
                    child: Icon(
                      obsc ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
                obscureText: obsc,
              ),
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
                      'Confirm',
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
            SizedBox(
              height: 20.sp,
            ),
            Text(
              'Don\'t know your password?',
              style: TextStyles.h2?.copyWith(
                fontWeight: FontWeight.normal,
                fontSize: 17.sp,
                color: Colors.grey,
              ),
            ),
            Text(
              'Log Out and Reset It',
              style: TextStyles.h2?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
