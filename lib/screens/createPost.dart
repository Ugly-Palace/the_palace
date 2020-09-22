import 'package:flutter/material.dart';
import 'package:thepalace/screens/home_screen.dart';

class CreatePost extends StatefulWidget {
  static const String id = 'CreatePost';
  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Center(
            child: Container(
              margin: EdgeInsets.only(right: 15),
              child: Text(
                'Create post'.toUpperCase(),
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ProfilePic(),
                    SizedBox(width: 5),
                    Text('Yusuf GuySon'),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'What\s on your mind?',
                  ),
                ),
              ],
            ),
            SizedBox(height: 200),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.perm_media,
                        color: Colors.orange,
                        size: 27,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Photo/Video',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.live_tv,
                        color: Colors.orange,
                        size: 27,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Go Live',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.record_voice_over,
                        color: Colors.orange,
                        size: 27,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Voice',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
