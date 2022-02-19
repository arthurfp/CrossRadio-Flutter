import 'package:flutter/material.dart';
import 'package:cross_radio/utils/dimensions.dart';
import 'package:cross_radio/utils/strings.dart';
import 'package:cross_radio/widgets/buttons/primary_button_widget.dart';

class DialogPag1 extends StatelessWidget {
  const DialogPag1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 0.99,
        height: MediaQuery.of(context).size.height * 0.99,
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/icon/tick.png",
              ),
            ),
            SizedBox(
              height: Dimensions.marginSize,
            ),
            Text(
              Strings.stepOneOfThree,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.pink,
              ),
            ),
            SizedBox(
              height: Dimensions.marginSize,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/icon/tick_normla.png"),
                SizedBox(
                  width: Dimensions.marginSize * .5,
                ),
                Text(
                  Strings.absolutelyNoAdvertisements,
                  style: const TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.marginSize * .6,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/icon/tick_normla.png"),
                SizedBox(
                  width: Dimensions.marginSize * .5,
                ),
                Text(
                  Strings.absolutelyNoAdvertisements,
                  style: const TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.marginSize * .6,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/icon/tick_normla.png"),
                SizedBox(
                  width: Dimensions.marginSize * .5,
                ),
                Text(
                  Strings.absolutelyNoAdvertisements,
                  style: const TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.marginSize * .6,
            ),
            PrimaryButtonWidget(title: Strings.next, onPressed: () {})
          ],
        ),
      ),
    );
  }
}
