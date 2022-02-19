import 'package:flutter/material.dart';
import 'package:cross_radio/screens/auth/sign_up_screen.dart';
import 'package:cross_radio/screens/auth/sign_in_screen.dart';
import 'package:cross_radio/utils/strings.dart';
import 'sign_up_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<AuthScreen> with SingleTickerProviderStateMixin {
  late TabController _controller;

  List<Widget> list = [
    Tab(
      text: Strings.signin,
    ),
    Tab(text: Strings.signUP)
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      top: true,
      child: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              flexibleSpace: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.black54,
                  indicatorColor: Colors.red,
                  tabs: list),
            ),
            body: const TabBarView(children: [SignInScreen(), SignUpScreen()]),
          ),
        ),
      ),
    ));
  }
}
