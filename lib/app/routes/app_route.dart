import 'package:get/get_navigation/src/routes/get_route.dart';


import '../modules/home/binding/landing_binding.dart';
import '../modules/home/view/home_page.dart';
import '../modules/home/view/landing_view.dart';
import '../modules/splash/view/splash_screen.dart';

// A central class to define all application routes and their associated screens.
class AppRoute {
  static String splashScreen = "/splash";
  static String welcomeScreen = "/welcome";
  static String landingScreen = "/landingScreen";
  static String dashboard = "/dashboard";

  static List<GetPage> routes = [
    GetPage(
      page: () => const SplashScreen(),
      name: AppRoute.splashScreen,
    ),
    GetPage(
        name: AppRoute.landingScreen,
        page: () => const LandingView(),
        binding: LandingBinding()),
    GetPage(name: AppRoute.dashboard, page: () => const FinanceDashboard())
  ];
}
