import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:finance_app/lib/Views/Onborading/general_onboarding_page.dart';

import 'package:flutter/scheduler.dart';

class OnBoarding extends StatelessWidget {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      // Access the PageController.page safely here
      final currentPage = _controller.page;
      print("Current page: $currentPage");
    });

    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        reverse: false,
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
          ),
        ],
      ),
    );
  }
}


