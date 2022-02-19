import 'package:flutter/material.dart';
import 'package:cross_radio/utils/custom_color.dart';
import 'package:cross_radio/utils/dimensions.dart';
import 'package:cross_radio/utils/strings.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.pink1,
        title: Text(Strings.termsAndCondition),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: Dimensions.heightSize,
          left: Dimensions.marginSize,
          right: Dimensions.marginSize,
        ),
        child: Text(
          Strings.termsDetails,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
