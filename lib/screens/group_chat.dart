import 'package:flutter/material.dart';
import 'package:thepalace/screens/home_screen.dart';

class GroupChat extends StatefulWidget {
  static const String id = 'GroupChat';
  @override
  _GroupChatState createState() => _GroupChatState();
}

class _GroupChatState extends State<GroupChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Group Chat',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 18,
          ),
        ),
        elevation: 3,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3),
              ),
              margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.search,
                size: 22,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          GroupListTile(
            title: 'Awesome People Group',
            lastMessage: 'Are we that awesome?',
            time: '12:30 am',
          ),
          GroupListTile(
            title: 'Arewa Network Group',
            lastMessage: 'Lorem is another story',
            time: '12:30 pm',
          ),
        ],
      ),
    );
  }
}

class GroupListTile extends StatelessWidget {
  const GroupListTile({
    Key key,
    this.title,
    this.lastMessage,
    this.time,
    this.onTap,
  }) : super(key: key);
  final String title, lastMessage, time;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          ListTile(
            onTap: () {},
            contentPadding: EdgeInsets.zero,
            leading: ProfilePic(),
            title: Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('$lastMessage'),
            trailing: Text('$time'),
          ),
          Divider(),
        ],
      ),
    );
  }
}
