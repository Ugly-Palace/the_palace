import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:thepalace/screens/createPost.dart';
import 'package:thepalace/screens/exhibition_center.dart';
import 'package:thepalace/screens/message_screen.dart';
import 'package:thepalace/widgets/story_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    void _openEndDrawer() {
      _scaffoldKey.currentState.openEndDrawer();
    }

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.home,
          color: Color(0xffFF9F01),
        ),
        titleSpacing: -5.0,
        title: Text(
          'Palace',
          style: TextStyle(
            color: Color(0xffFF9F01),
          ),
        ),
        actions: [
          IconButton(
            tooltip: 'Exhibition Center',
            icon: Icon(Icons.group_work),
            onPressed: () {
              Navigator.of(context).pushNamed(ExhibitionCenter.id);
            },
          ),
          Stack(
            children: [
              IconButton(
                tooltip: 'Messages',
                icon: Icon(Icons.chat),
                onPressed: () {
                  Navigator.of(context).pushNamed(Messages.id);
                },
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 2,
                  bottom: 2,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '20',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _openEndDrawer();
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.white),
            child: Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.search,
                    color: Color(0xff9F9F9F),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Search'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: HomeDrawer(),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              StoryContainer(),
              //
              Container(
                margin: EdgeInsets.only(left: 9.0, right: 9.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ProfilePic(),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Yusuf Guyson'),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('yesterday at 12:30PM'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2 + 100,
                      child: Text(
                        'Hello world!, lorem ipsullkklsrklfkfklm dolor sit amor fiff ffffkfkfntdhtgge',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 15,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 10,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                offset: Offset(0, 2.5),
                                color: Colors.black.withOpacity(0.25),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                                'https://www.greyhound.co.za/wp-content/uploads/2018/11/120416041832-zulu-ceremony-horizontal-large-gallery.jpg'),
                          ),
                        ),

                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.thumb_up,
                                        size: 14,
                                        color: Colors.black.withOpacity(0.9),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        '14k Likes',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.9),
                                          fontSize: 13,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.comment,
                                      size: 14,
                                      color: Colors.black.withOpacity(0.9),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '1.4k Comment',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.9),
                                        fontSize: 13,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.share,
                                      size: 14,
                                      color: Colors.black.withOpacity(0.9),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      '14 Share',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.9),
                                        fontSize: 13,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ), //row
                      ],
                    ), //
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(CreatePost.id);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
    );
  }
}

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({
    Key key,
  }) : super(key: key);

  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'X',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                ProfilePic(
                  width: 35,
                  height: 35,
                ),
                SizedBox(width: 5),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yusuf Guyson',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'View Your Profile',
                        style: TextStyle(
                          fontSize: 8.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[800].withOpacity(0.11),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(Icons.monetization_on),
                ),
              ),
              title: Text('Bank'),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.orange[600],
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.record_voice_over,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text('Auto Speech'),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.orange[600],
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.settings_voice,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text('Voice Record'),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.orange[600],
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.event_note,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text('Writting'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);
  final double width, height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 60.0,
      height: height ?? 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffFF9F01),
      ),
      padding: EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRwHAShkh7TbDfk4ZOZbIQSkREOYL_2PmrItg&usqp=CAU',
          ),
        ),
      ),
    );
  }
}
