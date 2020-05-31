import 'package:flutter/material.dart';
import 'package:thepalace/screens/auth_screen.dart';
import 'package:thepalace/screens/home_screen.dart';
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
      },
    );
  }
}
