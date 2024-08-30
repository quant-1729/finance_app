import 'package:flutter/material.dart';
import '../widgets/card.dart'; // Ensure this path is correct

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
        actions: [
          // Circular Avatar
          CircleAvatar(
            backgroundImage: AssetImage('Assests/avatar (1).png'), // Original path
          ),
          SizedBox(width: 10), // Add some spacing
          // Three Icons
          Icon(Icons.notifications),
          SizedBox(width: 10),
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.more_vert),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  CreditCard(
                    color: Color(0xFFF5D4C1),
                    image: "Assests/mastercard.png", // Original path
                  ),
                  SizedBox(height: 20), // Use height instead of width for vertical spacing
                  CreditCard(
                    color: Color(0xFFD3E1FF),
                    image: "Assests/visa.png", // Original path
                  ),
                  SizedBox(height: 20),
                  CreditCard(
                    color: Color(0xFFDED2F9),
                    image: "Assests/amex.png", // Original path
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Add card functionality goes here
              },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
