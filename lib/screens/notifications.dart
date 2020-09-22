import 'package:flutter/material.dart';
import 'package:thepalace/screens/home_screen.dart';

class Notifications extends StatefulWidget {
  static const String id = 'Notifications';
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: TabBar(
            indicatorColor: Colors.orange,
            tabs: [
              Tab(
                child: Text('Following'),
              ),
              Tab(
                child: Text('You'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                MultipleFollowTile(),
                LikedPostTile(),
                LikedPostTile(),
                MultipleFollowTile(),
                FollowUserTile(),
                ReactOnPostTile(),
                FollowUserTile(),
                ReactOnPostTile(),
              ],
            ),
            ListView(
              children: [
                ReactOnPostTile(),
                MultipleFollowTile(),
                FollowUserTile(),
                LikedPostTile(),
                LikedPostTile(),
                ReactOnPostTile(),
                MultipleFollowTile(),
                FollowUserTile(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LikedPostTile extends StatelessWidget {
  const LikedPostTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ProfilePic(
        width: 45,
        height: 45,
      ),
      title: Text('Aisha liked 7 events 2m ago'),
      subtitle: Row(
        children: [
          ImagePostNott(),
          ImagePostNott(),
          ImagePostNott(),
        ],
      ),
    );
  }
}

class ImagePostNott extends StatelessWidget {
  const ImagePostNott({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      margin: EdgeInsets.only(left: 2, right: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQPNAaxtRCiihEAjoG3p7wgDzo2z0F06ec61Q&usqp=CAU',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class FollowUserTile extends StatelessWidget {
  const FollowUserTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ProfilePic(
        width: 45,
        height: 45,
      ),
      title: Text('Abu Musa liked'),
      subtitle: Text(
        'Usman Saleh\s Comment: Masha is cool',
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Container(
        width: 80,
        height: 25,
        padding: EdgeInsets.only(
          left: 8,
          right: 8,
          top: 5,
          bottom: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            'Follow',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

class MultipleFollowTile extends StatelessWidget {
  const MultipleFollowTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        child: Stack(children: [
          ProfilePic(),
          Positioned.fill(
            left: 5,
            top: 5,
            child: ProfilePic(),
          ),
        ]),
      ),
      title: Text(
        'Abba Rg,Musa Damu, Sanusi Ipkiss ',
      ),
      subtitle: Text('Started Following You. 20m ago'),
    );
  }
}

class ReactOnPostTile extends StatelessWidget {
  const ReactOnPostTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ProfilePic(
        width: 45,
        height: 45,
      ),
      title: Text(
        'Musa Damu Commented on your event ',
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text('12h ago'),
      trailing: Container(
        width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQPNAaxtRCiihEAjoG3p7wgDzo2z0F06ec61Q&usqp=CAU',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
