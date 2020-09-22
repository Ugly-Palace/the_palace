import 'package:flutter/material.dart';
import 'package:thepalace/screens/group_chat.dart';
import 'package:thepalace/screens/home_screen.dart';

class Messages extends StatefulWidget {
  static const String id = 'Messages';
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.orange,
            tabs: [
              Tab(
                child: Text('Message'),
              ),
              Tab(
                child: Text('Groups'),
              ),
            ],
          ),
          actions: [
            Center(
              child: Container(
                margin: EdgeInsets.only(right: 15),
                child: Icon(Icons.menu),
              ),
            )
          ],
        ),
        body: TabBarView(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Column(
                    children: [
                      MessageCard(
                        name: 'Sanusi Ashiru',
                        lastMessage: 'It\s Late buddy go to bed',
                        timeago: '5 sec ago',
                        badge: '20',
                      ),
                      MessageCard(
                        name: 'Musa Damu',
                        lastMessage: 'I just Texted Distance',
                        timeago: '2 min ago',
                        badge: '99',
                      ),
                      MessageCard(
                        name: 'Maryamma Isali',
                        lastMessage: 'I don \t have your time, mtswwwwww',
                        timeago: '7 hrs ago',
                        badge: '2',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
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
            )
          ],
        ),
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key key,
    this.name,
    this.lastMessage,
    this.timeago,
    this.badge,
  }) : super(key: key);
  final String name, lastMessage, timeago, badge;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ProfilePic(
        width: 35,
        height: 35,
      ),
      title: Text('$name'),
      subtitle: Text(
        '$lastMessage',
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '$timeago',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 9,
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 20,
            height: 14,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: Center(
              child: Text(
                '$badge',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
