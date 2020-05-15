import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'file:///home/lectro/Documents/devSpace/mobile/flutter/the_palace/lib/widgets/story_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            style: TextStyle(color: Color(0xffFF9F01)),
          ),
          actions: [
            Icon(
              Icons.group_work,
            ),
            Icon(
              Icons.group_work,
            ),
            Icon(
              Icons.group_work,
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
          )),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                          'Hello world!, lorem ipsullkklsrklfkfklm dolor sit amor fiff ffffkfkfntdhtgge'),
                    ),
                    Container(), //
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
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
      ),
    );
  }
}
