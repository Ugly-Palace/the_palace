import 'package:flutter/material.dart';
import 'package:thepalace/widgets/bottom_navigator.dart';

import 'buttons.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            child: Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              padding: EdgeInsets.all(15.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding: EdgeInsets.all(15.0),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        contentPadding: EdgeInsets.all(15.0),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye)),
                  ),
                  AuthButton(
                    title: 'LOGIN',
                    onTap: () {
                      Navigator.of(context).pushNamed(BottomNavBar.id);
                    },
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Forgot Password ?',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 0.7,
                  width: 80.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'Or',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 0.7,
                  width: 80.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialAuthButton(
                icon: Text(
                  'F',
                  style: TextStyle(color: Color(0xff00A1FF), fontSize: 25.0),
                ),
              ),
              SocialAuthButton(
                icon: Text(
                  'G',
                  style: TextStyle(color: Color(0xffFF468B), fontSize: 25.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
