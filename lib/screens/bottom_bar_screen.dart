import 'package:first_project/screens/chat_page.dart';
import 'package:first_project/screens/four_images_page.dart';
import 'package:first_project/screens/gredient_test_page.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Widget> pages = [ChatPage(), FourImagesPage(), GredientTestPage()];
  int _selectPage = 0;

  @override
  void initState() {
    changeIndex();
    super.initState();
  }

  changeIndex() async {
    for (var i = 0; i < 3; i++) {
      await Future.delayed(const Duration(seconds: 3));
      if (mounted == true) {
        if (i == 0) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pages[i]));
        } else {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => pages[i]),
              (value) => false);
        }
      }
    }
  }

  @override
  void reassemble() {
    _selectPage = 0;
    setState(() {});
    super.reassemble();
  }

  @override
  void dispose() {
    print("Dispoooooooooseeeeee");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectPage,
        selectedItemColor: Colors.deepOrange,
        showUnselectedLabels: true,
        onTap: (e) {
          print(e);
          setState(() {
            _selectPage = e;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new), label: "Profile"),
        ],
      ),
    );
  }
}
