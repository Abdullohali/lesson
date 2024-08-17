import 'package:flutter/material.dart';
import 'package:shake/shake.dart';
import 'package:first_project/screens/four_images_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with TickerProviderStateMixin {
  int index = 0;
  late TabController tabController;
  late ShakeDetector shakeDetector;

  @override
  void initState() {
    super.initState();

    // Initialize ShakeDetector
    shakeDetector = ShakeDetector.autoStart(onPhoneShake: () {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Shakeeeee")));
    });

    // Initialize TabController
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose the ShakeDetector
    shakeDetector.stopListening();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Chat Page'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FourImagesPage(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              text: "Birinchi",
              icon: Icon(Icons.title),
            ),
            Tab(
              text: "Ikkinchi",
              icon: Icon(Icons.title),
            ),
            Tab(
              text: "Uchinchi",
              icon: Icon(Icons.title),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: TabBarView(
        controller: tabController,
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
