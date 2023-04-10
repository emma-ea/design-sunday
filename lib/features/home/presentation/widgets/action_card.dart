import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final String title, subTitle;
  final int completed;
  final int percentage;

  const ActionCard({
    super.key, 
    required this.title, 
    this.subTitle = '', 
    required this.completed, 
    required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(subTitle),
                Text("$completed completed"),
              ],
            ),
            // PercentageCard(),
          ],
        ),
      ),
    );
  }
}