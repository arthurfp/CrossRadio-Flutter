import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cross_radio/utils/custom_color.dart';
import 'package:cross_radio/utils/dimensions.dart';
import 'package:cross_radio/utils/strings.dart';
import 'package:cross_radio/widgets/buttons/image_button_widget.dart';
import 'package:cross_radio/widgets/buttons/primary_button_widget.dart';
import 'package:cross_radio/widgets/input/input_password_widget.dart';
import 'package:cross_radio/widgets/input/input_text_field_widget.dart';
import 'package:cross_radio/widgets/sized_box/custom_size.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final occupationController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final zipCodeController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool isChecked = false;

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    usernameController.dispose();
    occupationController.dispose();
    addressController.dispose();
    cityController.dispose();
    zipCodeController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (BuildContext context, child) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: [
                CustomSize.heightBetween(),
                CustomSize.heightBetween(),
                _inputWidget(context),
                CustomSize.heightBetween(),
                _buttonWidget(context),
                _dontHaveaAccountGestre(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buttonWidget(BuildContext context) {
    return Column(
      children: [
        PrimaryButtonWidget(title: Strings.signUP, onPressed: () {}),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }

  _dontHaveaAccountGestre(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: Divider(),
            ),
            SizedBox(
              width: Dimensions.heightSize * 2,
            ),
            GestureDetector(
                child: Text(
              Strings.alreadyHaveAnAccount,
              style: TextStyle(
                  fontSize: Dimensions.defaultTextSize, fontWeight: FontWeight.w400, color: CustomColor.secondaryColor),
            )),
            const SizedBox(
              width: 16,
            ),
            const Expanded(
              child: Divider(),
            ),
            CustomSize.heightBetween(),
          ],
        ),
        CustomSize.heightBetween(),
        GestureDetector(
            child: Text(
          Strings.or,
          style: TextStyle(
              fontSize: Dimensions.defaultTextSize, fontWeight: FontWeight.bold, color: CustomColor.secondaryColor),
        )),
        CustomSize.heightBetween(),
        ImageButtonWidget(title: Strings.google, imagePath: 'assets/images/social/google.png', onPressed: () {})
      ],
    );
  }

  _inputWidget(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: InputTextFieldWidget(
                  controller: firstNameController,
                  hintText: Strings.firstName,
                ),
              ),
              CustomSize.widthBetween(),
              Expanded(
                child: InputTextFieldWidget(
                  controller: lastNameController,
                  hintText: Strings.lastName,
                ),
              ),
            ],
          ),
          InputTextFieldWidget(
            controller: emailController,
            hintText: Strings.email,
            keyboardType: TextInputType.emailAddress,
          ),
          InputPasswordWidget(
            controller: passwordController,
            hintText: Strings.password,
          ),
          InputPasswordWidget(
            controller: confirmPasswordController,
            hintText: Strings.confirmPassword,
          ),
        ],
      ),
    );
  }
}
