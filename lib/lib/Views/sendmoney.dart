import 'package:finance_app/lib/widgets/button.dart';
import 'package:finance_app/lib/widgets/simplebutton.dart';
import 'package:flutter/material.dart';

import '../widgets/card.dart';

class Sendmoney extends StatefulWidget {
  const Sendmoney({super.key});

  @override
  State<Sendmoney> createState() => _SendmoneyState();
}

class _SendmoneyState extends State<Sendmoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Send Money",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            SizedBox(
              height: 200, // Explicit height
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                reverse: true,
                child: Row(
                  children: [
                    CreditCard(color: Color(0xFFF5D4C1), image: "Assests/mastercard.png"),
                    SizedBox(width: 15,),
                    CreditCard(color: Color(0xFFD3E1FF), image: "Assests/visa.png"),
                    SizedBox(width: 15,),
                    CreditCard(color: Color(0xFFDED2F9), image: "Assests/amex.png"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 68,),
            Center(
              child: CircleAvatar(
                radius: 60,
                child: Image.asset("Assests/avatar (4).png"),
              ),
            ),
            SizedBox(height: 8,
            ),
            Text("Priyanshu Agrawal", style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 22,),
            Text("76500", style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 22,),
            Simplebutton(),
            SizedBox(height: 40,),
            Bluebutton(text: "Continue",onPressed: (){},)

          ],
        ),
      ),
    );
  }
}
