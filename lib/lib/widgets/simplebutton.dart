import 'package:finance_app/lib/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Simplebutton extends StatelessWidget {
  const Simplebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305.w,
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.black26)

      ),
      child: Center(
        child: Text(
          "Reason",
          style: TextStyle(
              fontSize: 16,
          ),
        ),
      ),
    );
  }
}
