import 'package:first_project/screens/chat_page.dart';
import 'package:first_project/screens/gredient_test_page.dart';
import 'package:first_project/screens/home_page.dart';
import 'package:first_project/screens/new_exams_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar2 extends StatefulWidget {
  const BottomNavBar2({super.key});

  @override
  State<BottomNavBar2> createState() => _BottomNavBar2State();
}

class _BottomNavBar2State extends State<BottomNavBar2> {
  List<Widget> widgetList = const [
    ChatPage(),
    NewExamsPage(),
    GredientTestPage()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.greenAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: (e) {
          currentIndex = e;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "First"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Second"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_outlined), label: "Third"),
        ],
      ),
    );
  }
}
