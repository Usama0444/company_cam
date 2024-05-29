import 'package:company_cam/core/Text_styles.dart';
import 'package:company_cam/screens/login.dart';
import 'package:company_cam/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EditCompanyInfo extends StatefulWidget {
  @override
  _EditCompanyInfoState createState() => _EditCompanyInfoState();
}

class _EditCompanyInfoState extends State<EditCompanyInfo> {
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
          'Edit Company Info',
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
              _buildTextField('Company Name', (value) {
                setState(() {
                  _firstName = value;
                });
              }),
              _buildTextField('Company Address Line 1', (value) {
                setState(() {
                  _firstName = value;
                });
              }),
              _buildTextField('Company Address Line 1', (value) {
                setState(() {
                  _firstName = value;
                });
              }),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: _buildTextField('City', (value) {
                      setState(() {
                        _firstName = value;
                      });
                    }),
                  ),
                  Expanded(
                    flex: 1,
                    child: _buildTextField('State', (value) {
                      setState(() {
                        _firstName = value;
                      });
                    }),
                  ),
                  Expanded(
                    flex: 2,
                    child: _buildTextField('Postal code', (value) {
                      setState(() {
                        _firstName = value;
                      });
                    }),
                  ),
                ],
              ),
              _buildTextField('Country', (value) {
                setState(() {
                  _phoneNumber = value;
                });
              }, keyboardType: TextInputType.text),
              _buildTextField('CompanyPhone Number', (value) {
                setState(() {
                  _phoneNumber = value;
                });
              }, keyboardType: TextInputType.phone),
              _buildTextField('Industry', (value) {
                setState(() {
                  _phoneNumber = value;
                });
              }, keyboardType: TextInputType.text),
              Container(
                margin: EdgeInsets.only(bottom: 3.h),
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'How did you hear about us?',

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
                child: _buildTextField('Which One?', (value) {
                  setState(() {
                    _phoneNumber = value;
                  });
                }, keyboardType: TextInputType.text),
              ),
              const Text(
                'Number of Employees',
                style: TextStyle(fontSize: 16),
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
