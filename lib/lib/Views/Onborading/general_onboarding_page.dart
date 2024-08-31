import 'package:flutter/material.dart';
import 'package:finance_app/lib/widgets/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../main.dart';

class GeneralOnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagepath;
  final bool isLastPage; // Add this parameter
  final VoidCallback? onComplete; // Callback when onboarding is complete

  GeneralOnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.imagepath,
    this.isLastPage = false, // Default is false
    this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 45.h),
            Center(
              child: Text(
                "Finance",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 48.h),
            Image.asset(imagepath, fit: BoxFit.fill),
            SizedBox(height: 45.h),
            Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 45),
            isLastPage
                ? Bluebutton(text: "Get Started", onPressed: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => HomeScreen(), // Navigate to HomeScreen
                ),
              );
            })
                : Bluebutton(text: "Continue",onPressed: (){

            }),
          ],
        ),
      ),
    );
  }
}
