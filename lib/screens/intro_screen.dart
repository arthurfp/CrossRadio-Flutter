import 'package:flutter/material.dart';
import 'package:cross_radio/routes/routes.dart';
import 'package:cross_radio/utils/dimensions.dart';

import 'package:cross_radio/utils/strings.dart';
import 'package:cross_radio/widgets/buttons/primary_button_white.dart';
import 'package:cross_radio/widgets/buttons/primary_button_widget.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icon/crossLogo.png",
                  width: Dimensions.widthSize * 7,
                  height: Dimensions.heightSize * 5,
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: Dimensions.heightSize * 2),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                  child: PrimaryButtonWidgetWhite(
                    title: Strings.signin,
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.authScreen);
                    },
                  ),
                ),
                SizedBox(height: Dimensions.heightSize * .5),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                  child: PrimaryButtonWidget(
                    title: Strings.signUP,
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.authScreen);
                    },
                  ),
                ),
                TextButton(
                  child: Text(
                    Strings.termsAndCondition,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.termsAndConditionScreen);
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
