import 'package:flutter/material.dart';
import 'package:thepalace/screens/edit_profile.dart';

class MenuDrawer extends StatefulWidget {
  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'X',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(EditProfile.id);
                },
                leading: Icon(Icons.account_circle),
                title: Text('Account'),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help'),
              ),
            ],
          ),
          Column(
            children: [
              Divider(),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Sign Out'),
              ),
              SizedBox(height: 45)
            ],
          ),
        ],
      ),
    );
  }
}
