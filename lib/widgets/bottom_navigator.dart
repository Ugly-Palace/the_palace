import 'package:flutter/material.dart';
import 'package:thepalace/screens/home_screen.dart';
import 'package:thepalace/screens/profile_screen.dart';

import 'fab_bottom_bar.dart';

class BottomNavigator extends StatefulWidget {
  static const String id = 'BottomNavigator';

  @override
  _BottomNavigatorState createState() => new _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator>
    with TickerProviderStateMixin {
  PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  List<Widget> screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    ProfileScreen(),
  ];
  int pageIndex = 0;

  onPageChanged(int pageIndex) {
    this.pageIndex = pageIndex;
  }

  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = 'FAB: $index';
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[pageIndex],
      bottomNavigationBar: FABBottomAppBar(
        //Do the curved bottom nav
        centerItemText: 'A',
        color: Color(0xff3C3C3C),
        selectedColor: Color(0xffFF9F00),
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.home),
          FABBottomAppBarItem(
            iconData: Icons.group,
          ),
          FABBottomAppBarItem(
            iconData: Icons.message,
          ),
          FABBottomAppBarItem(
            iconData: Icons.person,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffFF9F00),
        elevation: 0,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Color(0xff3B3B3B),
        ),
      ),
    );
  }
}
//PageView(
//physics: NeverScrollableScrollPhysics(),
//controller: pageController,
//children: screens,
//onPageChanged: onPageChanged,
//),
