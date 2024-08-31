import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sucessfullysendmoney extends StatelessWidget {
  const Sucessfullysendmoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 105,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFD0F1EB),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,), 
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.crop_square_sharp, size: 26,),
                  ), 
                  SizedBox(height: 40,), 
                  Image.asset('Assests/Currency Crush Spakling Bitcoin.png', height: 207.h,width: 283.w,),
                  SizedBox(height: 30,),
                  Center(
                    child: const Text("Money Sent!", style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800
                    ),),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Text("We have just send your money to", style: TextStyle(
                      fontSize: 18,
                    ),),
                  ),
                  SizedBox(height: 30,),
                  card(),
                  SizedBox(height: 30.h,),
                  Center(
                    child: const Text("400.00", style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800
                    ),),
                  ),
                  SizedBox(height: 5.h,),
                  Center(
                    child: Text("Add a comment here", style: TextStyle(
                      fontSize: 18,
                    ),),
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Text("31 Aug, 2024- 9:56 PM", style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
            
            
            
            
            
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget card() {
    return Container(
       decoration: BoxDecoration(
        color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
      width: 251.w,
      height: 70.h,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircleAvatar(radius: 25, child: Image.asset('Assests/avatar (5).png')),
            SizedBox(width: 15.w),
            Text("Raj Singh", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),

          ],
        ),
      ),
    );
  }

}
