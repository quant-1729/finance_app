import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:finance_app/lib/Views/Onborading/general_onboarding_page.dart';
import 'package:finance_app/main.dart'; // Ensure this imports the main file where HomeScreen is defined

class OnBoarding extends StatelessWidget {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          GeneralOnboardingPage(
            title: "Save money",
            description: "Have all your finances in one place!",
            imagepath: "Assests/Onboarding (1).png",
          ),
          GeneralOnboardingPage(
            title: "Check your wallet",
            description: "Manage your money and invest with just one tap!",
            imagepath: "Assests/Onboarding (2).png",
          ),
          GeneralOnboardingPage(
            title: "Have access anywhere!",
            description: "Reach your financial goal within your first year!",
            imagepath: "Assests/Onboarding (3).png",
            isLastPage: true, // Pass a flag indicating this is the last page
            onComplete: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => HomeScreen(), // Navigate to HomeScreen
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
