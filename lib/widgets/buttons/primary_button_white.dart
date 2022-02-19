import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cross_radio/utils/custom_color.dart';
import 'package:cross_radio/utils/dimensions.dart';

class PrimaryButtonWidgetWhite extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const PrimaryButtonWidgetWhite({Key? key, required this.title, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        child: Text(title),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(CustomColor.pink1),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 10.h),
            ),
            textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: Dimensions.defaultTextSize.sp, fontWeight: FontWeight.w700)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), side: const BorderSide(color: CustomColor.black1)),
            )),
      ),
    );
  }
}
