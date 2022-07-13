import 'package:flutter/material.dart';
import 'package:tiktok/pages/add_video_page.dart';
import 'package:tiktok/pages/discover_page.dart';
import 'package:tiktok/pages/home_page.dart';
import 'package:tiktok/pages/inbox_page.dart';
import 'package:tiktok/pages/profile_page.dart';
import 'package:tiktok/widgets/custom_bottom_navigation_bar.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({Key? key}) : super(key: key);

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    HomePage(),
    DiscoverPage(),
    AddVideoPage(),
    InboxPage(),
    ProfilePage(),
  ];

  void _onIconTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
          selectedPageIndex: _selectedIndex, onIconTap: _onIconTapped),
    );
  }
}
