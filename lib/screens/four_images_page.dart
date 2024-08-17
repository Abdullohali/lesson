import 'package:first_project/screens/image_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourImagesPage extends StatefulWidget {
  const FourImagesPage({super.key});

  @override
  State<FourImagesPage> createState() => _FourImagesPageState();
}

class _FourImagesPageState extends State<FourImagesPage> {
  int index = 1;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () async {
                isLoading = !isLoading;
                setState(() {});
                await Future.delayed(const Duration(seconds: 3));
                isLoading = !isLoading;
                setState(() {});
              },
              icon: const Icon(Icons.refresh))
        ],
        title: const Text("Four images"),
      ),
      body: isLoading == false
          ? ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              children: [
                ...List.generate(100, (value) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ImagePage(
                                      imageUrl:
                                          "https://picsum.photos/200/300?random=${value}")));
                        },
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.7,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://picsum.photos/200/300?random=${value}"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  );
                })
              ],
            )
          : const Center(
              child: CupertinoActivityIndicator(),
            ),
    );
  }
}
