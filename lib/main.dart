import 'package:flutter/material.dart';
import 'package:thepalace/screens/auth_screen.dart';
import 'package:thepalace/screens/createPost.dart';
import 'package:thepalace/screens/create_exhibition.dart';
import 'package:thepalace/screens/edit_profile.dart';
import 'package:thepalace/screens/exhibition_center.dart';
import 'package:thepalace/screens/followers_screen.dart';
import 'package:thepalace/screens/following.dart';
import 'package:thepalace/screens/group_chat.dart';
import 'package:thepalace/screens/home_screen.dart';
import 'package:thepalace/screens/message_screen.dart';
import 'package:thepalace/widgets/bottom_navigator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
      ),
      initialRoute: AuthScreen.id,
      routes: {
        AuthScreen.id: (context) => AuthScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        BottomNavBar.id: (context) => BottomNavBar(),
        CreatePost.id: (context) => CreatePost(),
        GroupChat.id: (context) => GroupChat(),
        ExhibitionCenter.id: (context) => ExhibitionCenter(),
        CreateExhibition.id: (context) => CreateExhibition(),
        EditProfile.id: (context) => EditProfile(),
        FollowersCrenen.id: (context) => FollowersCrenen(),
        FollowingScreen.id: (context) => FollowingScreen(),
        Messages.id: (context) => Messages(),
      },
    );
  }
}
