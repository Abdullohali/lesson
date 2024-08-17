import 'package:first_project/screens/chat_page.dart';
import 'package:first_project/screens/four_images_page.dart';
import 'package:first_project/screens/gredient_test_page.dart';
import 'package:flutter/material.dart';

class NavigatorsPage extends StatefulWidget {
  NavigatorsPage({super.key});

  @override
  State<NavigatorsPage> createState() => _NavigatorsPageState();
}

class _NavigatorsPageState extends State<NavigatorsPage> {
  List<String> nameList = ["Chat page", "Four Image page", "Gredient page"];

  List<Widget> widgetList = const [
    ChatPage(),
    FourImagesPage(),
    GredientTestPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Navigators Page",
          style: TextStyle(color: Colors.deepPurple, fontSize: 20),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          nameList.length,
          (index) => TextButton(
            onPressed: () {
              if (index == 1) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => widgetList[index]));
              }
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => widgetList[index]));
            },
            child: Text(
              nameList[index],
            ),
          ),
        ),
      ),
    );
  }
}
