import 'package:flutter/material.dart';
import 'package:cross_radio/routes/routes.dart';
import 'package:cross_radio/utils/dimensions.dart';
import 'package:cross_radio/utils/strings.dart';
import 'package:cross_radio/widgets/buttons/primary_button_widget.dart';
import 'package:cross_radio/widgets/input/input_text_field_widget.dart';
import 'package:cross_radio/widgets/sized_box/custom_size.dart';

class RequestSongScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();

  const RequestSongScreen({Key? key}) : super(key: key);
}

class _LoginScreenState extends State<RequestSongScreen> {
  late bool rememberMe = false;
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            Strings.requestASong,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        leading: InkWell(
          child: Image.asset("assets/images/icon/cross.png"),
          onTap: () {
            Navigator.of(context).pushNamedAndRemoveUntil(Routes.dashboardScreen, (routes) => false);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: Dimensions.marginSize * 1.5,
              ),
              CustomSize.heightBetween(),
              _inputWidget(context),
              CustomSize.heightBetween(),
              _buttonWidget(context),
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
            height: Dimensions.heightSize,
          ),
          InputTextFieldWidget(
            controller: emailController,
            hintText: Strings.requestASong,
          ),
          InputTextFieldWidget(
            controller: emailController,
            hintText: Strings.username,
          ),
          InputTextFieldWidget(
            controller: emailController,
            hintText: Strings.email,
          ),
        ],
      ),
    );
  }

  _buttonWidget(BuildContext context) {
    return Column(
      children: [
        PrimaryButtonWidget(
            title: Strings.requestASongAnotherText,
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(Routes.dashboardScreen, (routes) => false);
            }),
        SizedBox(
          height: Dimensions.heightSize * .4,
        )
      ],
    );
  }
}
