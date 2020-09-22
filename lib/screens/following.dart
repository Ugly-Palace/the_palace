import 'package:flutter/material.dart';
import 'package:thepalace/screens/followers_screen.dart';

class FollowingScreen extends StatefulWidget {
  static const String id = 'FollowingScreen';
  @override
  _FollowingScreenState createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  bool isFollowing = true;
  bool isNotFollowing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Center(
            child: Container(
              child: Icon(Icons.menu),
              margin: EdgeInsets.only(right: 15),
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          'Following',
          style: TextStyle(fontSize: 13.5),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              FollowerCard(
                isFollowing: isFollowing,
                name: 'Musa Damu',
              ),
              FollowerCard(
                isFollowing: isNotFollowing,
                name: 'Abdul Sani Adam',
              ),
              FollowerCard(
                isFollowing: isFollowing,
                name: 'Auwal Phareed',
              ),
              FollowerCard(
                isFollowing: isNotFollowing,
                name: 'Jonah Hex',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
