import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key key,
    this.title,
    this.onTap,
  }) : super(key: key);
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
        height: 50.0,
        child: RaisedButton(
          elevation: 2,
          focusElevation: 2,
          onPressed: onTap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.all(0.0),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffFF0057),
                    Color(0xffFF0057),
                    Color(0xffFF3B36),
                    Color(0xffFF8B14),
                    Color(0xffFFC400),
                  ],
                ),
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//Social
class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({
    Key key,
    this.icon,
    this.color,
  }) : super(key: key);
  final Color color;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.white,
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
      elevation: 1,
      focusElevation: 1,
      onPressed: () {},
      child: icon,
    );
  }
}
//Fab
