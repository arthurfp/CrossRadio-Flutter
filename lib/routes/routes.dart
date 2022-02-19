import 'package:cross_radio/screens/auth/auth_screen.dart';
import 'package:cross_radio/screens/drawer/about_us_screen.dart';
import 'package:cross_radio/screens/drawer/follow_us_screen.dart';
import 'package:cross_radio/screens/drawer/main_page/dashboard_screen.dart';
import 'package:cross_radio/screens/drawer/main_page/tabs/categoriespages/favourite_page.dart';
import 'package:cross_radio/screens/drawer/premium_pages/premium_page.dart';
import 'package:cross_radio/screens/drawer/request_song_screen.dart';
import 'package:cross_radio/screens/intro_screen.dart';
import 'package:cross_radio/screens/onboard/onboard_screen.dart';
import 'package:cross_radio/screens/splash_screen_screen.dart';
import 'package:cross_radio/screens/terms_and_condition_screen.dart';

class Routes {
  static const String splashScreen = '/splashScreen';
  static const String onboardScreen = '/onboardScreen';
  static const String introScreen = '/introScreen';
  static const String authScreen = '/authScreen';
  static const String termsAndConditionScreen = '/termsAndConditionScreen';
  static const String dashboardScreen = '/dashboardScreen';
  static const String aboutUsScreen = '/aboutUsScreen';
  static const String followUsScreen = '/followUsScreen';
  static const String requestSongScreen = '/requestSongScreen';
  static const String favouriteScreen = '/favouriteScreen';
  static const String premiumPage = '/premiumPage';

  static var list = {
    Routes.splashScreen: (context) => const SplashScreen(),
    Routes.onboardScreen: (context) => const OnboardScreen(),
    Routes.introScreen: (context) => const IntroScreen(),
    Routes.authScreen: (context) => const AuthScreen(),
    Routes.termsAndConditionScreen: (context) => const TermsAndConditionScreen(),
    Routes.dashboardScreen: (context) => const DashboardScreen(),
    Routes.requestSongScreen: (context) => const RequestSongScreen(),
    Routes.favouriteScreen: (context) => const Favourite(),
    Routes.aboutUsScreen: (context) => const AboutUs(),
    Routes.premiumPage: (context) => const PremiumPage(),
    Routes.followUsScreen: (context) => const FollowUs(),
  };
}
