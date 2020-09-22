import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:thepalace/screens/group_chat.dart';
import 'package:thepalace/screens/home_screen.dart';
import 'package:thepalace/screens/notifications.dart';
import 'package:thepalace/screens/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  static String id = 'bottom';
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

int _page = 1;
List<Widget> myPages = [
  GroupChat(),
  HomeScreen(),
  Notifications(),
  ProfileScreen(),
];
GlobalKey _bottomNavigationKey = GlobalKey();

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: myPages.elementAt(_page),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          backgroundColor: Colors.grey.withOpacity(0.1),
          color: Colors.white,
          buttonBackgroundColor: Color(0xffFF9200),
          height: 55,
          animationDuration: Duration(
            milliseconds: 200,
          ),
          index: _page,
          animationCurve: Curves.bounceInOut,
          items: <Widget>[
            Icon(Icons.group, size: 30, color: Colors.black45),
            Icon(Icons.home, size: 30, color: Colors.black45),
            Icon(Icons.favorite, size: 30, color: Colors.black45),
            Icon(Icons.person, size: 30, color: Colors.black45),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ));
  }
}
