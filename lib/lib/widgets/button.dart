import 'package:finance_app/lib/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bluebutton extends StatelessWidget {
  String text;
  final VoidCallback onPressed;

  Bluebutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 305.w,
        height: 54.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Appcolor.button_blue,

        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16, color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
