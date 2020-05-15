import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StoryContainer extends StatelessWidget {
  const StoryContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      margin: EdgeInsets.only(bottom: 10.0, top: 10.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StoryWidget(),
              StoryWidget(),
              StoryWidget(),
              StoryWidget(),
              StoryWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffFF9F01),
            ),
            margin: EdgeInsets.only(left: 9.0, right: 9.0),
            padding: EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Name'),
        ],
      ),
    );
  }
}
