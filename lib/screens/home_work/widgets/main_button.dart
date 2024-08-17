import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.title, required this.ontap});
  final String? title;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.teal.shade300.withOpacity(0.8)),
      onPressed: ontap,
      child: Text(
        title ?? "",
        style: const TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
      ),
    );
  }
}
