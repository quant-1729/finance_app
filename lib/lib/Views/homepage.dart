import 'dart:ffi';
import 'dart:ui';

import 'package:finance_app/lib/Views/sendmoney.dart';
import 'package:finance_app/lib/Views/transctions.dart';
import 'package:finance_app/lib/Views/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            topintrobar(),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 26),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      middlecard(context),
                      option(context),
                      SizedBox(height: 28,),
                      Row(
                        children: [
                          Text("Your Last Activity", style: TextStyle(
                            fontSize: 24, 
                            fontWeight: FontWeight.w500
                          ),), 
                          Spacer(), 
                          Text("Today", style: TextStyle(
                            fontSize: 14, 
                          ),),
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_drop_down, size: 16,)
                          
                          
                        ],
                      ),
                      for(int i=0; i<10;i++) paymentcard(),  SizedBox(height: 10,),
              
              
                    ],
              
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}

Widget topintrobar(){
  return Container(
    decoration: BoxDecoration(
      color: Color(0xFFD0F1EB),
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),

    ),
    child: Column(
      children: [
        SizedBox(height: 67.h,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              CircleAvatar(radius: 25,child: Image.asset("Assests/avatar (1).png", fit: BoxFit.fill,),),
              SizedBox(width: 16.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi Priyanshu", style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400
                  ),),
                  Text("Welcome back!", style: TextStyle(
                      fontSize: 18,
                  ),)

                ],
              ),
              Spacer(),
              Container(
                alignment: Alignment.bottomCenter,
                  child: Icon(Icons.more_horiz, size: 26,))
            ],
          ),
        ),
        SizedBox(height: 20,)
      ],
    ),
  );
}

Widget middlecard(BuildContext context ) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 21.h, horizontal: 13.w),
      child: Row(
        children: [
          Image.asset(
            "Assests/Currency Crush Coins.png",
            width: 137.w,
            height: 137.h,
          ),
          SizedBox(width: 18.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                Text(
                  "Your Balance",
                  style: TextStyle(fontSize: 12.sp),
                ),
                Row(
                  children: [
                    Text(
                      "3453.00",
                      style: TextStyle(fontSize: 24.sp, fontWeight:
                      FontWeight.w800),
                    ),
                    Spacer(),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_right, size: 24,),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.wallet,size: 24,),
                    SizedBox(width: 10,),
                    Text(
                      "Wallet",
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Wallet()));
                      },
                      icon: Icon(Icons.arrow_right, size: 24,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget option(BuildContext context){
  return Container(
    child: Row(
      children: [
          optioncard(Icon(Icons.telegram, size: 34,), Color(0xFFDED2F9), "Send", (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Sendmoney()));
          }),
          Spacer(),
          optioncard(Icon(Icons.payment), Color(0xFFD3E1FF),"Request ", (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Transactions()));

          }),
        Spacer(), 
        optioncard(Icon(Icons.settings), Color(0xFFFDC9D2), "More",(){})
      ],
    ),
  );


}
Widget optioncard(Icon icon, Color color, String title, VoidCallback ontap) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      width: 94.w,
      height: 118.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        children: [
          Spacer(),
          Center(
            child: CircleAvatar(
              radius: 30, // Adjust this value as needed
              child: icon,
              backgroundColor: Colors.white,
            ),
          ),
          Spacer(),
          Text(title, style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),),
          Spacer()
        ],
      ),

    ),
  );
}
Widget paymentcard(){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xFFF4F7FA),
    ),
    child: const Padding(
      padding:  EdgeInsets.all( 10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Center(
              child: Icon(Icons.shopping_bag, size: 24,),
            ),
          ),
          SizedBox(width: 7,),
          Text("Shopping", style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.w500),),
          Spacer(),
          Text("1200", style: TextStyle(fontSize: 18,
              ),),



        ],
      ),

    ),
  );
}

