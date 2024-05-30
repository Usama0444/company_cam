import 'package:company_cam/core/Text_styles.dart';
import 'package:company_cam/screens/create/yourself.dart';
import 'package:company_cam/screens/home/home.dart';
import 'package:company_cam/screens/signup.dart';
import 'package:company_cam/screens/widget/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsc = true;
  Widget _buildTextField(String label, ValueChanged<String> onChanged,
      {TextInputType keyboardType = TextInputType.text,
      bool obscureText = false}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
              : const SizedBox(),
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
        backgroundColor: Colors.transparent,
        elevation: 0,
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
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sign in to an existing account',
                style: TextStyles.h2?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 19.sp,
                ),
              ),
              const SizedBox(height: 20),
              _buildTextField('Email Address', (value) {}),
              const SizedBox(height: 10),
              _buildTextField('Password', (value) {}),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(MyBottomNavBar());
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
                        'Sign in',
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
             
              const SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Handle forgot password
                  },
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('OR'),
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(SignUpScreen());
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          textStyle: const TextStyle(fontSize: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fixedSize: const Size(double.infinity, 55)),
                      child: Text(
                        'Single Sign-On',
                        style: TextStyles.h3?.copyWith(
                          color: Colors.grey[700],
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
