import 'package:flutter/material.dart';
import 'package:cross_radio/routes/routes.dart';
import 'package:cross_radio/screens/drawer/premium_pages/premium_pages/monthly.dart';
import 'package:cross_radio/screens/drawer/premium_pages/premium_pages/twoyear.dart';
import 'package:cross_radio/screens/drawer/premium_pages/premium_pages/yearly.dart';
import 'package:cross_radio/utils/custom_color.dart';
import 'package:cross_radio/utils/strings.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({Key? key}) : super(key: key);

  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<PremiumPage> with SingleTickerProviderStateMixin {
  late TabController _controller;

  List<Widget> list = [
    Tab(
      text: Strings.monthly,
    ),
    Tab(
      text: Strings.yearly,
    ),
    Tab(
      text: Strings.twoYear,
    )
  ];

  @override
  void initState() {
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: Image.asset(
              "assets/images/icon/cross.png",
              color: Colors.white,
            ),
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(Routes.dashboardScreen, (routes) => false);
            },
          ),
          backgroundColor: CustomColor.pink1,
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorPadding: const EdgeInsets.fromLTRB(15, 0, 15, 2),
            tabs: list,
          ),
          title: Text(Strings.chooseYourPlan),
        ),
        body: const TabBarView(
          children: [
            Monthly(),
            OneYear(),
            TwoYear(),
          ],
        ),
      ),
    );
  }
}
