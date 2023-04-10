// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:design_sunday/features/home/presentation/widgets/action_card.dart';
import 'package:design_sunday/features/home/presentation/widgets/action_carousel.dart';
import 'package:design_sunday/features/home/presentation/widgets/top_header.dart';
import 'package:design_sunday/features/home/presentation/widgets/user_greetings.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}


class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        HomeTopHeader(),
        UserGreetings(userName: "Miller"),
        SizedBox(height: 10,),
        ActionCarousel(),
      ],
    );
  }
}
