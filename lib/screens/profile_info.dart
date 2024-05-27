import 'package:company_cam/core/Text_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              // Edit action for Account Info
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
              // Edit action for Profile Info
            }),
            const Divider(
              height: 20,
              thickness: 2,
            ),
            _buildSection('Company Info', [
              _buildInfoRow('Company Name', 'Hhh'),
            ], () {
              // Edit action for Company Info
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
            Container(
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
}
