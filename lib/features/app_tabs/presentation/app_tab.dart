import 'package:design_sunday/features/add_tasks/add_task_dialog.dart';
import 'package:design_sunday/features/activity/presentation/pages/activity_view.dart';
import 'package:design_sunday/features/app_tabs/presentation/widgets/bottom_nav_item.dart';
import 'package:design_sunday/features/app_tabs/presentation/widgets/center_nav_item.dart';
import 'package:design_sunday/features/home/presentation/pages/home_view.dart';
import 'package:design_sunday/features/settings/presentation/pages/settings_view.dart';
import 'package:design_sunday/features/statistics/presentation/pages/statistics_view.dart';
import 'package:flutter/material.dart';

class AppTab extends StatefulWidget {
  const AppTab({super.key});

  @override
  State<AppTab> createState() => _AppTabState();
}

class _AppTabState extends State<AppTab> {

  int _currentIndex = 0;

  void updateCurrentIndex(int index) {
    if (index == 2) {
      showAddTaskDialog(context);
      return;
    }
    setState(() {
        _currentIndex = index;
    });
  }

  List<Widget> pages = [
    const HomeView(),
    const ActivityView(),
    const SizedBox.shrink(),
    const StatisticsView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: pages[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            updateCurrentIndex(index);
          },
          items: navItems(),
          elevation: 0,
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> navItems() {
    return [
      BottomNavigationBarItem(
        icon: BottomNavItem(
          icon: Icons.home,
          selected: _currentIndex == 0,
        ), 
        label: ''
      ),
      BottomNavigationBarItem(
        icon: BottomNavItem(
          icon: Icons.local_activity,
          selected: _currentIndex == 1,
        ), 
        label: ''
      ),
      const BottomNavigationBarItem(
        icon: CenterNavItem(),
        label: ''
      ),
      BottomNavigationBarItem(
        icon: BottomNavItem(
          icon: Icons.graphic_eq,
          selected: _currentIndex == 3,
        ), 
        label: ''
      ),
      BottomNavigationBarItem(
        icon: BottomNavItem(
          icon: Icons.settings,
          selected: _currentIndex == 4,
        ), 
        label: ''
      ),
    ];
  }
}