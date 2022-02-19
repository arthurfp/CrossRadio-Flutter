import 'package:flutter/material.dart';
import 'package:cross_radio/routes/routes.dart';

import 'package:cross_radio/screens/drawer/main_page/tabs/categoriespages/all_channels_page.dart';
import 'package:cross_radio/screens/drawer/main_page/tabs/categoriespages/favourite_page.dart';
import 'package:cross_radio/screens/drawer/main_page/tabs/categoriespages/premium_page.dart';

import 'package:cross_radio/utils/custom_color.dart';
import 'package:cross_radio/utils/strings.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget> list = [
    Tab(text: Strings.all),
    Tab(text: Strings.premium),
    Tab(
      text: Strings.favourite,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColor.pink1,
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorPadding: const EdgeInsets.fromLTRB(15, 0, 15, 2),
            tabs: list,
          ),
          title: const Text(Strings.appName),
        ),
        drawer: Drawer(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  ListTile(
                    title: const Text(Strings.appName),
                    leading: Image.asset(
                      "assets/images/icon/crossLogo.png",
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: Text(Strings.myFavourite),
                    leading: const Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        Routes.premiumPage,
                      );
                    },
                  ),
                  ListTile(
                    title: Text(Strings.requestASongAnotherText),
                    leading: const Icon(
                      Icons.music_note,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        Routes.requestSongScreen,
                      );
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(12.0, 0, 0, 0),
                    child: Divider(
                      color: Colors.black54,
                    ),
                  ),
                  ListTile(
                    title: Text(Strings.aboutUsOnly),
                    leading: const Icon(
                      Icons.info,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        Routes.aboutUsScreen,
                      );
                    },
                  ),
                  ListTile(
                    title: Text(Strings.rateUs),
                    leading: const Icon(
                      Icons.star,
                      color: Colors.black,
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: Text(Strings.followUsOnly),
                    leading: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(Routes.followUsScreen);
                    },
                  ),
                  ListTile(
                    title: const Text(Strings.share),
                    leading: const Icon(
                      Icons.mobile_screen_share,
                      color: Colors.black,
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                ],
              )),
        ),
        body: const TabBarView(
          children: [
            AllChannels(),
            Premium(),
            Favourite(),
          ],
        ),
      ),
    );
  }
}
