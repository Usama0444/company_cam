import 'package:company_cam/core/Text_styles.dart';
import 'package:company_cam/screens/login.dart';
import 'package:company_cam/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EditProfileInfo extends StatefulWidget {
  @override
  _EditProfileInfoState createState() => _EditProfileInfoState();
}

class _EditProfileInfoState extends State<EditProfileInfo> {
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  String _phoneNumber = '';
  String _companyName = '';
  String _workEmail = '';
  String _password = '';
  String? _howDidYouHear;
  String? _selectedCompanySize;

  Widget _buildTextField(String label, ValueChanged<String> onChanged,
      {TextInputType keyboardType = TextInputType.text,
      bool obscureText = false}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,

          // labelStyle: TextStyles.h2?.copyWith(fontSize: 18.sp),
        ),
        keyboardType: keyboardType,
        obscureText: obscureText,
        onChanged: onChanged,
      ),
    );
  }

  Widget _buildCompanySizeButtons() {
    List<String> companySizes = ['XS', 'S', 'M', 'L', 'XL', '2ML', '3XL'];
    return Wrap(
      spacing: 10.0,
      runSpacing: 10,
      children: companySizes.map((size) {
        return GestureDetector(
          onTap: () {
            print('size $size');
            setState(() {
              _selectedCompanySize = _selectedCompanySize == size ? null : size;
            });
          },
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            decoration: BoxDecoration(
              color: _selectedCompanySize == size
                  ? const Color.fromARGB(255, 3, 28, 48)
                  : Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              size,
              style: TextStyle(
                color:
                    _selectedCompanySize == size ? Colors.white : Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        title: Text(
          'Edit Profile Info',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Switch profile action
            },
            child: const Text(
              'Save',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: _buildTextField('First Name', (value) {
                      setState(() {
                        _firstName = value;
                      });
                    }),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _buildTextField('Last Name', (value) {
                      setState(() {
                        _lastName = value;
                      });
                    }),
                  ),
                ],
              ),
              _buildTextField('Phone Number', (value) {
                setState(() {
                  _phoneNumber = value;
                });
              }, keyboardType: TextInputType.phone),
              _buildTextField('Job Title', (value) {
                setState(() {
                  _phoneNumber = value;
                });
              }, keyboardType: TextInputType.phone),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'T-shirt Size',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              _buildCompanySizeButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
