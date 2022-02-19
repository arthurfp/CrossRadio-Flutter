import 'package:flutter/material.dart';
import 'package:cross_radio/routes/routes.dart';
import 'package:cross_radio/utils/dimensions.dart';
import 'package:cross_radio/utils/strings.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          Strings.aboutUsOnly,
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
              padding: EdgeInsets.all(Dimensions.marginSize * .5),
              child: SingleChildScrollView(
                child: Text(
                  Strings.aboutUs,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: Dimensions.defaultTextSize,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
