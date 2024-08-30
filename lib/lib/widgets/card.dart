import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreditCard extends StatelessWidget {
  final Color color;  // Ensure these fields are immutable in a StatelessWidget
  final String image;

  CreditCard({super.key, required this.color, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.w,
      height: 175.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,  // Align content to start
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                  children: [
                    Text(
                      "Current Balance",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "7600.00",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  image,
                  width: 37,
                  height: 24,
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              "**** **** ****  4532",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Priyanshu Agrawal",
                  style: TextStyle(fontSize: 12),
                ),
                Spacer(),
                Text(
                  "Exp. Date 07/26",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
