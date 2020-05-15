import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'buttons.dart';

class SignUpTab extends StatelessWidget {
  const SignUpTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 37.0),
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
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    contentPadding: EdgeInsets.all(15.0),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
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
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      contentPadding: EdgeInsets.all(15.0),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye)),
                ),
                AuthButton(
                  title: 'SignUp',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
