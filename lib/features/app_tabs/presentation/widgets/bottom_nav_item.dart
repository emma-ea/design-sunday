import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {

  final IconData icon;
  final bool selected;

  const BottomNavItem({super.key, required this.icon, this.selected = false});

  final double dimen = 6;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          const SizedBox(height: 4,),
          Container(
            width: dimen,
            height: dimen,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(dimen),
              color: selected ? Colors.greenAccent : null, 
            ),
          ),
        ],
      ),
    );
  }
}
