import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cross_radio/screens/drawer/main_page/dashboard_screen.dart';
import 'package:cross_radio/utils/custom_color.dart';
import 'package:cross_radio/utils/dimensions.dart';
import 'package:cross_radio/utils/strings.dart';
import 'package:cross_radio/widgets/buttons/image_button_widget.dart';
import 'package:cross_radio/widgets/buttons/primary_button_widget.dart';
import 'package:cross_radio/widgets/input/input_password_widget.dart';
import 'package:cross_radio/widgets/input/input_text_field_widget.dart';
import 'package:cross_radio/widgets/sized_box/custom_size.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignInScreen> {
  late bool rememberMe = false;
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: Dimensions.heightSize * 2,
              ),
              CustomSize.heightBetween(),
              _inputWidget(context),
              _forgetPassword(context),
              CustomSize.heightBetween(),
              _checkBoxWidget(context),
              _buttonWidget(context),
              _dontHaveaAccountGestre(context),
              CustomSize.heightBetween(),
            ],
          ),
        ),
      ),
    );
  }

  _inputWidget(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: Dimensions.marginSize,
          ),
          InputTextFieldWidget(
            controller: emailController,
            hintText: Strings.email,
          ),
          InputPasswordWidget(
            controller: passwordController,
            hintText: Strings.password,
          ),
        ],
      ),
    );
  }

  _buttonWidget(BuildContext context) {
    return Column(
      children: [
        PrimaryButtonWidget(
            title: Strings.login,
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (BuildContext context) => const DashboardScreen()));
            }),
        SizedBox(
          height: Dimensions.heightSize * .5,
        )
      ],
    );
  }

  _forgetPassword(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          child: Text(
            Strings.forgetPassword,
            style: const TextStyle(color: Colors.black87),
          ),
        ),
        SizedBox(
          width: Dimensions.marginSize,
        )
      ],
    );
  }

  _checkBoxWidget(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      value: rememberMe,
      activeColor: CustomColor.primaryColor,
      onChanged: (value) {
        setState(() {
          rememberMe = value!;
        });
      },
      title: Wrap(
        alignment: WrapAlignment.start,
        children: [
          Text(
            Strings.rememberMe,
            style:
                TextStyle(fontSize: Dimensions.defaultTextSize.sp, fontWeight: FontWeight.w400, color: Colors.black87),
          ),
        ],
      ),
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
              width: Dimensions.widthSize,
            ),
            GestureDetector(
                child: Text(
              Strings.dontHaveAnAccount,
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
}
