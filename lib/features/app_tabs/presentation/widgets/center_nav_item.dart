import 'package:flutter/material.dart';

class CenterNavItem extends StatelessWidget {
  const CenterNavItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.greenAccent,
      ),
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}