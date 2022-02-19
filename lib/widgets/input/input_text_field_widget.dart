import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cross_radio/utils/custom_color.dart';
import 'package:cross_radio/utils/custom_style.dart';
import 'package:cross_radio/utils/dimensions.dart';
import 'package:cross_radio/utils/strings.dart';
import 'package:cross_radio/widgets/sized_box/custom_size.dart';

class InputTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? readOnly;

  const InputTextFieldWidget(
      {Key? key, required this.controller, required this.hintText, this.keyboardType, this.readOnly = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          readOnly: readOnly!,
          style: CustomStyle.textStyle,
          controller: controller,
          keyboardType: keyboardType,
          validator: (String? value) {
            if (value!.isEmpty) {
              return Strings.pleaseFillOutTheField;
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
                borderSide: const BorderSide(color: Colors.black54, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
                borderSide: const BorderSide(color: Colors.black54, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
                borderSide: const BorderSide(color: Colors.black54, width: 0.5),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
                borderSide: const BorderSide(color: Colors.red, width: 0.5),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
                borderSide: const BorderSide(color: Colors.red, width: 0.5),
              ),
              filled: true,
              fillColor: CustomColor.white.withOpacity(0.03),
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              hintText: hintText,
              hintStyle: CustomStyle.hintTextStyle),
        ),
        CustomSize.heightBetween()
      ],
    );
  }
}
