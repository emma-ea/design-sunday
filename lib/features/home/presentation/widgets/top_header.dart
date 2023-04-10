import 'package:flutter/material.dart';

class HomeTopHeader extends StatelessWidget {

  final VoidCallback? menuAction;
  final VoidCallback? profileAction;

  const HomeTopHeader({super.key, this.menuAction, this.profileAction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: menuAction, 
            icon: const Icon(Icons.menu)
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
            ),
            child: IconButton(
              onPressed: profileAction, 
              icon: const Icon(
                Icons.account_box_rounded, 
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}