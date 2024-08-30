import 'package:finance_app/lib/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bluebutton extends StatelessWidget {
  const Bluebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305.w,
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Appcolor.button_blue,

      ),
      child: Center(
        child: Text(
          "Continue",
          style: TextStyle(
            fontSize: 16, color: Colors.white
          ),
        ),
      ),
    );
  }
}
