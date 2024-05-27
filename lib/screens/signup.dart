import 'package:company_cam/core/Text_styles.dart';
import 'package:company_cam/screens/create/yourself.dart';
import 'package:company_cam/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String _companyName = '';
  String _workEmail = '';
  String _password = '';
  bool checkbox = false;
  bool obsc = true;
  Widget _buildTextField(String label, ValueChanged<String> onChanged,
      {TextInputType keyboardType = TextInputType.text,
      bool obscureText = false}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
          // labelStyle: TextStyles.h2,
          suffixIcon: label == 'Password'
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      obsc = !obsc;
                    });
                  },
                  child: Icon(
                    obsc ? Icons.visibility : Icons.visibility_off,
                  ),
                )
              : SizedBox(),
        ),
        keyboardType: keyboardType,
        obscureText: obsc,
        onChanged: onChanged,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Welcome to AVR quality control',
                style: TextStyles.h2?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 19.sp,
                ),
              ),
              SizedBox(height: 20),
              _buildTextField('Company Name', (value) {
                setState(() {
                  _companyName = value;
                });
              }),
              SizedBox(height: 10),
              _buildTextField('Work Email', (value) {
                setState(() {
                  _workEmail = value;
                });
              }, keyboardType: TextInputType.emailAddress),
              SizedBox(height: 10),
              _buildTextField('Password', (value) {
                setState(() {
                  _password = value;
                });
              }, obscureText: true),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: checkbox,
                    onChanged: (bool? newValue) {
                      setState(() {
                        checkbox = newValue!;
                      });
                    },
                  ),
                  Row(
                    children: [
                      Text(
                        'I agree to ',
                        style: TextStyles.textStyle?.copyWith(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        'Terms of Use ',
                        style: TextStyles.textStyle?.copyWith(
                          color: Colors.blue,
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        'and',
                        style: TextStyles.textStyle?.copyWith(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        ' Privacy Policy.',
                        style: TextStyles.textStyle?.copyWith(
                          color: Colors.blue,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(Yourself());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          textStyle: const TextStyle(fontSize: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fixedSize: const Size(double.infinity, 55)),
                      child: Text(
                        'Get Started',
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
        ),
      ),
    );
  }
}
