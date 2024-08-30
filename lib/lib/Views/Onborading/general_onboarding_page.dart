import 'package:finance_app/lib/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralOnboardingPage extends StatelessWidget {
  String title;
  String description;
  String imagepath;
   GeneralOnboardingPage({super.key, required this.title, required this.description, required this.imagepath}) {
     // TODO: implement GeneralOnboardingPage

   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 45.h),
            Center(child: Text(
              "Finance", style:
              TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400

              ),
            ),),
            SizedBox(height: 48.h,),
            Image.asset(imagepath, fit: BoxFit.fill,),
            SizedBox(height: 45.h,),
            Text(title, style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 16,),
            Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16),
                child: Text(description, style: TextStyle(
                    fontSize: 18,
                ),),
              ),
            ),
            SizedBox(height: 45,),
            Bluebutton(),



          ],
        ),

      ),
    );
  }
}
