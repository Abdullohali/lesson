import 'package:first_project/screens/chat_page.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key, required this.imageUrl});
  final imageUrl;
  @override
  Widget build(BuildContext context) {
    print(imageUrl);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const ChatPage()));
              },
              icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Center(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: double.infinity,
            child: InteractiveViewer(
              child: Image.network(
                imageUrl,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
