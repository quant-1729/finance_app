import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Transactions",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(height: 24.h),
            Text(
              "Choose which account to transfer to",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFD0F1EB),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 17),
                        CircleAvatar(
                          radius: 25,
                          child: Icon(Icons.add, size: 24, color: Colors.black),
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(width: 19),
                        Text("New account", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    SizedBox(height: 16),

                  ],
                ),
              ),
            ),
            SizedBox(height: 24,),
            TabBar(
              controller: _tabController,
              tabs: [
                Tab(text: 'Recents'),
                Tab(text: 'Contacts'),
              ],
            ),
            SizedBox(height: 30,),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 19.5),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Recents(),
                    Recents(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Recents() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return card();
      },
    );
  }

  Widget card() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(radius: 25, child: Image.asset('Assests/avatar (5).png')),
          SizedBox(width: 15),
          Text("Saket Agrawal", style: TextStyle(fontSize: 14)),
          Spacer(),
          Icon(
            Icons.more_horiz,
            size: 24,
          ),
        ],
      ),
    );
  }
}
