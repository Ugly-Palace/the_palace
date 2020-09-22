import 'package:flutter/material.dart';
import 'package:thepalace/screens/home_screen.dart';

class FollowersCrenen extends StatefulWidget {
  static const String id = 'FollowersCrenen';
  @override
  _FollowersCrenenState createState() => _FollowersCrenenState();
}

class _FollowersCrenenState extends State<FollowersCrenen> {
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
          'Followers',
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

class FollowerCard extends StatefulWidget {
  FollowerCard({
    Key key,
    @required this.isFollowing,
    this.name,
  }) : super(key: key);

  bool isFollowing;
  final String name;
  @override
  _FollowerCardState createState() => _FollowerCardState();
}

class _FollowerCardState extends State<FollowerCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ProfilePic(
        width: 35,
        height: 35,
      ),
      title: Text(widget.name),
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            widget.isFollowing = !widget.isFollowing;
          });
        },
        child: Container(
          width: 90,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: widget.isFollowing ? Colors.white : Colors.orange,
            border: widget.isFollowing
                ? Border.all(
                    color: Colors.orange,
                    width: 2,
                  )
                : null,
          ),
          child: Center(
            child: Text(
              widget.isFollowing ? 'Following' : 'Follow',
              style: TextStyle(
                color: widget.isFollowing ? Colors.orange : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
