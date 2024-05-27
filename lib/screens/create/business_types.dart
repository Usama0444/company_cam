import 'package:company_cam/core/Text_styles.dart';
import 'package:company_cam/screens/create/ask_location.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BusinessTypeSelectionScreen extends StatefulWidget {
  @override
  _BusinessTypeSelectionScreenState createState() =>
      _BusinessTypeSelectionScreenState();
}

class _BusinessTypeSelectionScreenState
    extends State<BusinessTypeSelectionScreen> {
  // List of business types
  final List<String> _businessTypes = [
    'Concrete',
    'Beauty',
    'Adjusting',
    'Electric',
    'Plumbing',
    'Carpentry',
    'Landscaping',
    'Painting',
    'Cleaning',
    'Catering',
    'Consulting',
    'Accounting',
    'Legal',
    'IT Services',
    'Marketing'
  ];

  // Variable to hold the selected business type
  String? _selectedBusinessType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    'We\'ll use this to personalize your experience.',
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 18.sp, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
        ),
        title: Text(
          'What do you like?',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
        child: ElevatedButton(
          onPressed: () {
            Get.to(AskLocation());
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
            'Start Using AVR quality control',
            style: TextStyles.textStyle?.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _businessTypes.length,
        padding: EdgeInsets.only(top: 10),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    _businessTypes[index],
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  leading: Radio<String>(
                    value: _businessTypes[index],
                    groupValue: _selectedBusinessType,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedBusinessType = value;
                      });
                    },
                  ),
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
