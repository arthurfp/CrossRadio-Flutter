import 'package:flutter/material.dart';
import 'package:cross_radio/routes/routes.dart';
import 'package:cross_radio/utils/custom_color.dart';
import 'package:cross_radio/utils/dimensions.dart';
import 'package:cross_radio/utils/strings.dart';
import 'package:cross_radio/widgets/buttons/primary_button_widget.dart';
import 'data.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int totalPages = OnBoardingItemList.loadOnboardItem().length;
  late int next;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        itemCount: totalPages,
        itemBuilder: (context, index) {
          OnBoardingItem onBoardingItem = OnBoardingItemList.loadOnboardItem()[index];
          next = index;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(onBoardingItem.image!),
                backgroundColor: Colors.white,
                radius: Dimensions.imageHeight,
                foregroundColor: Colors.black,
              ),
              SizedBox(height: Dimensions.heightSize),
              Text(
                onBoardingItem.title!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.largeTextSize,
                ),
              ),
              SizedBox(height: Dimensions.heightSize),
              Padding(
                padding: EdgeInsets.all(Dimensions.marginSize),
                child: Text(
                  onBoardingItem.subTitle!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: Dimensions.defaultTextSize,
                  ),
                ),
              ),
              const SizedBox(height: 30.00),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Align(
                  alignment: Alignment.center,
                  child: index != (totalPages - 1)
                      ? Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: SizedBox(
                            width: 100.0,
                            height: 20.0,
                            child: ListView.builder(
                              itemCount: totalPages,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, i) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    width: index == i ? 20 : 20.0,
                                    decoration: BoxDecoration(
                                        color: index == i
                                            ? CustomColor.primaryColor
                                            : CustomColor.primaryColor.withOpacity(0.4),
                                        borderRadius: const BorderRadius.all(Radius.circular(10.0))),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.only(
                            left: Dimensions.marginSize,
                            right: Dimensions.marginSize,
                          ),
                          child: PrimaryButtonWidget(
                            title: Strings.getStarted,
                            onPressed: () {
                              _goToScreen(context);
                            },
                          ),
                        ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  _goToScreen(BuildContext context) async {
    Navigator.of(context).pushNamedAndRemoveUntil(Routes.introScreen, (route) => false);
  }
}
