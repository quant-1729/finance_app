import 'package:finance_app/lib/Views/Onborading/general_onboarding_page.dart';
import 'package:finance_app/lib/Views/Onborading/onboarding.dart';
import 'package:finance_app/lib/Views/activity.dart';
import 'package:finance_app/lib/Views/homepage.dart'; // Ensure this imports a StatefulWidget for Homepage
import 'package:finance_app/lib/Views/statisticspage.dart';
import 'package:finance_app/lib/Views/sucessfullysendmoney.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) {
        ScreenUtil.init(context, designSize: Size(375, 812), minTextAdapt: true, splitScreenMode: true);
        return widget!;
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnBoarding(), // Update this to HomeScreen with BottomNavigationBar
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Homepage(), // Ensure this is the correct page
    Sucessfullysendmoney(), // Replace with your actual page
    Statisticspage()// Replace with your actual page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.deepPurple, // Background color for selected item
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Activity',
            backgroundColor: Colors.deepPurple, // Background color for selected item
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Statistics',
            backgroundColor: Colors.deepPurple, // Background color for selected item
          ),
        ],
        selectedItemColor: Colors.deepPurple, // Highlight color for selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
      ),
    );
  }
}
