import 'package:flutter/material.dart';

import 'home_screen.dart';

class CreateExhibition extends StatefulWidget {
  static const String id = "CreateExhibition";
  @override
  _CreateExhibitionState createState() => _CreateExhibitionState();
}

class _CreateExhibitionState extends State<CreateExhibition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(right: 15),
                child: Center(
                  child: Text(
                    'POST',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Container(
            child: Text(
              'Make an Exhibition ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ProfilePic(),
                      SizedBox(width: 5),
                      Text(
                        'Yusuf GuySon',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'What\s on your mind?',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 200),
            Container(
              color: Color(0xff1e1405),
              padding: EdgeInsets.all(10),
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
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.music_note,
                        color: Colors.orange,
                        size: 27,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Music',
                        style: TextStyle(fontSize: 17, color: Colors.white),
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
                          color: Colors.white,
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
