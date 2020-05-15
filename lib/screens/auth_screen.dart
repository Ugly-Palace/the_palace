import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'file:///home/lectro/Documents/devSpace/mobile/flutter/the_palace/lib/widgets/login_tab.dart';
import 'file:///home/lectro/Documents/devSpace/mobile/flutter/the_palace/lib/widgets/sign_up_tab.dart';

class AuthScreen extends StatelessWidget {
  static const String id = 'AuthScreen';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // The number of tabs / content sections to display.
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter, //tweenAnim
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFFC600),
                  Color(0xffFFBA00),
                  Color(0xffFFBA00),
                  Color(0xffFF9200),
                  Color(0xffFF6921),
                  Color(0xffFF5F24),
                  Color(0xffFF3B2E),
                  Color(0xffFF2632),
                  Color(0xffFF1135),
                  Color(0xffFF0040),
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(25.0),
                    height: 50.0,
                    width: 50.0,
                    child: FlutterLogo(
                      size: 30.0,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 10.0, top: 10.0),
                      width: double.infinity,
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Color(0xffFF7124),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.white),
                        tabs: [
                          Align(
                            alignment: Alignment.center,
                            child: Tab(
                              child: Text(
                                'EXSISTING',
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Tab(
                              child: Text(
                                'NEW',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //view
                  Expanded(
                    flex: 7,
                    child: TabBarView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        LoginTab(),
                        SignUpTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
