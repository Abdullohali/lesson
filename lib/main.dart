import 'package:first_project/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
          useMaterial3: true,
          primaryColor: Colors.green,
          scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
          iconTheme: const IconThemeData(size: 80, color: Colors.black),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.black,
              titleTextStyle: TextStyle(color: Colors.green, fontSize: 23))),
      home: const FourimagesPage(),
    );
  }
}
