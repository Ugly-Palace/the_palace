import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:thepalace/screens/followers_screen.dart';
import 'package:thepalace/screens/following.dart';
import 'package:thepalace/screens/home_screen.dart';
import 'package:thepalace/widgets/drawer.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'ProfileScreen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Profile'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              _openEndDrawer();
            },
            icon: Icon(
              Icons.menu,
            ),
          )
        ],
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: MenuDrawer(),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0),
            Column(
              children: <Widget>[
                Center(
                  child: ProfilePic(
                    width: 120,
                    height: 120,
                  ),
                ),
                SizedBox(
                  height: 10.5,
                ),
                Text(
                  'Yusuf Guyson',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                SizedBox(
                  height: 3.5,
                ),
                Text('Fasion designer'),
              ],
            ),
            SizedBox(height: 10.5),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x29000000),
                    blurRadius: 3.0,
                    offset: Offset(0.0, 1.5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '1.2k ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'post',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(FollowersCrenen.id);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: '102k ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Followers',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(FollowingScreen.id);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: '5M ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Following',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          'Advertisement\n  Fashion designer Featuring Hausa motivational speaker Actor, Comedy ',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'More details...',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.all(13.0),
                          child: Icon(Icons.add),
                        ),
                        shape: CircleBorder(),
                        color: Colors.orange,
                      ),
                      MyStoryWidget(),
                      MyStoryWidget(),
                      MyStoryWidget(),
                      MyStoryWidget(),
                      MyStoryWidget(),
                      MyStoryWidget(),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: 30.0,
                height: 30.0,
                margin: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                  children: <Widget>[
                    Container(
//                            margin: EdgeInsets.only(bottom: 5.0),
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      ),
                    ),
                    Container(
//                            margin: EdgeInsets.only(bottom: 5.0),
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      ),
                    ),
                    Container(
//                            margin: EdgeInsets.only(bottom: 5.0),
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      ),
                    ),
                    Container(
//                            margin: EdgeInsets.only(bottom: 5.0),
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      ),
                    ),
                    Container(
//                            margin: EdgeInsets.only(bottom: 5.0),
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      ),
                    ),
                    Container(
//                            margin: EdgeInsets.only(bottom: 5.0),
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class MyStoryWidget extends StatelessWidget {
  const MyStoryWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffFF9F01),
      ),
      margin: EdgeInsets.only(left: 6.0, right: 6.0),
      padding: EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
