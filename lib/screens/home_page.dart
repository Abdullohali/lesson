import 'package:flutter/material.dart';

class FourimagesPage extends StatefulWidget {
  const FourimagesPage({super.key});

  @override
  State<FourimagesPage> createState() => _FourimagesPageState();
}

class _FourimagesPageState extends State<FourimagesPage> {
  int index = 1;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () async {
              isLoading = !isLoading;
              setState(() {});
              await Future.delayed(const Duration(seconds: 3));
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
        title: const Text("Rasmlar"),
      ),
      body: isLoading == false
          ? ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              children: [
                Image.asset(
                  "assets/main.jpg",
                  fit: BoxFit.cover,
                ),
                ...List.generate(100, (value) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ImagesPage(
                                        imageUrl:
                                            "https://www.google.com/imgres?q=bmw%20m5%20cs&imgurl=https%3A%2F%2Fwww.gearpatrol.com%2Fwp-content%2Fuploads%2Fsites%2F2%2F2021%2F02%2Fp90411223-lowres-the-new-bmw-m5-cs-sc-1611762712-jpg.webp&imgrefurl=https%3A%2F%2Fwww.gearpatrol.com%2Fcars%2Fg35335215%2F2022-bmw-m5-cs%2F&docid=bqQe64KVWiep_M&tbnid=Aa44I4QgLimShM&vet=12ahUKEwi8grO96peHAxWqFBAIHaVKCKkQM3oECCQQAA..i&w=2250&h=1500&hcb=2&ved=2ahUKEwi8grO96peHAxWqFBAIHaVKCKkQM3oECCQQAA")));
                          },
                          child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              width: MediaQuery.sizeOf(context).height * 0.5,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        "https://www.google.com/imgres?q=bmw%20m5%20cs&imgurl=https%3A%2F%2Fwww.gearpatrol.com%2Fwp-content%2Fuploads%2Fsites%2F2%2F2021%2F02%2Fp90411223-lowres-the-new-bmw-m5-cs-sc-1611762712-jpg.webp&imgrefurl=https%3A%2F%2Fwww.gearpatrol.com%2Fcars%2Fg35335215%2F2022-bmw-m5-cs%2F&docid=bqQe64KVWiep_M&tbnid=Aa44I4QgLimShM&vet=12ahUKEwi8grO96peHAxWqFBAIHaVKCKkQM3oECCQQAA..i&w=2250&h=1500&hcb=2&ved=2ahUKEwi8grO96peHAxWqFBAIHaVKCKkQM3oECCQQAA",
                                      ),
                                      fit: BoxFit.cover)),
                              child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.5,
                                  width:
                                      MediaQuery.sizeOf(context).height * 0.5,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://www.google.com/imgres?q=bmw%20m5%20cs&imgurl=https%3A%2F%2Fwww.gearpatrol.com%2Fwp-content%2Fuploads%2Fsites%2F2%2F2021%2F02%2Fp90411223-lowres-the-new-bmw-m5-cs-sc-1611762712-jpg.webp&imgrefurl=https%3A%2F%2Fwww.gearpatrol.com%2Fcars%2Fg35335215%2F2022-bmw-m5-cs%2F&docid=bqQe64KVWiep_M&tbnid=Aa44I4QgLimShM&vet=12ahUKEwi8grO96peHAxWqFBAIHaVKCKkQM3oECCQQAA..i&w=2250&h=1500&hcb=2&ved=2ahUKEwi8grO96peHAxWqFBAIHaVKCKkQM3oECCQQAA",
                                          ),
                                          fit: BoxFit.cover)))))
                    ],
                  );
                })
              ],
            )
          : const Center(),
    );
  }

  ImagesPage({required String imageUrl}) {}
}
