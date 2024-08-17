import 'package:flutter/material.dart';

class NewExamsPage extends StatefulWidget {
  const NewExamsPage({super.key});

  @override
  State<NewExamsPage> createState() => _NewExamsPageState();
}

class _NewExamsPageState extends State<NewExamsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Exams"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...List.generate(
            100,
            (index) => Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//Navigatorlar,Setstate,Staefull va Statelessning farqi,Scaffold,Column,Row,Listview