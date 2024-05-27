import 'package:company_cam/core/Text_styles.dart';
import 'package:company_cam/screens/login.dart';
import 'package:company_cam/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'business_types.dart';

class Yourself extends StatefulWidget {
  @override
  _YourselfState createState() => _YourselfState();
}

class _YourselfState extends State<Yourself> {
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
          // labelStyle: TextStyles.h2?.copyWith(fontSize: 18.sp),
        ),
        keyboardType: keyboardType,
        obscureText: obscureText,
        onChanged: onChanged,
      ),
    );
  }

  Widget _buildCompanySizeButtons() {
    List<String> companySizes = ['1-3', '4-10', '11-49', '50-99', '100+'];
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
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Tell us about yourself',
                style: TextStyles.h2?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 19.sp,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
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
              Container(
                margin: EdgeInsets.only(bottom: 3.h),
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'How did you hear about us?',
                    border: InputBorder.none,
                    // labelStyle: TextStyles.h2,
                  ),
                  // hint: Text('Select an option'),
                  value: _howDidYouHear,
                  onChanged: (newValue) {
                    setState(() {
                      _howDidYouHear = newValue!;
                    });
                  },
                  items: <String>[
                    'Podcast',
                    'Software Integration Partner',
                    'Someone told me',
                    'Trade Show or Event',
                    'Social Media or Search',
                    'Manufacturer or Industry Group',
                    'Other',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Visibility(
                visible: _howDidYouHear != null,
                child: _buildTextField(
                  'Which One?',
                  (value) {},
                ),
              ),
              const Text(
                'Company Size',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              _buildCompanySizeButtons(),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(BusinessTypeSelectionScreen());
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
                        'Continue',
                        style: TextStyle(
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
