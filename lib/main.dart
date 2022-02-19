import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cross_radio/routes/routes.dart';
import 'package:cross_radio/utils/custom_color.dart';
import 'package:cross_radio/utils/strings.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: CustomColor.primaryColor,
    ));
    return ScreenUtilInit(
      builder: (BuildContext context, child) => MaterialApp(
        title: Strings.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: CustomColor.primaryColor,
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        ),
        // home: MyHomePage(title: 'Flutter Demo Home Page'),
        initialRoute: Routes.splashScreen,
        routes: Routes.list,
      ),
      designSize: const Size(360, 640),
    );
  }
}
