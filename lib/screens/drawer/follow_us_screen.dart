import 'package:flutter/material.dart';
import 'package:cross_radio/routes/routes.dart';

import 'package:cross_radio/utils/strings.dart';

class FollowUs extends StatelessWidget {
  const FollowUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          Strings.followUsOnly,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        leading: InkWell(
          child: Image.asset("assets/images/icon/cross.png"),
          onTap: () {
            Navigator.of(context).pushNamedAndRemoveUntil(Routes.dashboardScreen, (routes) => false);
          },
        ),
      ),
      body: setBody(context),
    );
  }

  setBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                Strings.followUs,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/social/facebook.png"),
                  backgroundColor: Colors.white,
                  radius: 25,
                  foregroundColor: Colors.black,
                ),
                SizedBox(width: 30.00),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/social/instagram.png'),
                  backgroundColor: Colors.white,
                  radius: 25,
                  foregroundColor: Colors.black,
                ),
                SizedBox(width: 30.00),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/social/twitter.png'),
                  backgroundColor: Colors.white,
                  radius: 25,
                  foregroundColor: Colors.black,
                ),
                SizedBox(width: 30.00),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/social/youtube.png'),
                  backgroundColor: Colors.white,
                  radius: 25,
                  foregroundColor: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
