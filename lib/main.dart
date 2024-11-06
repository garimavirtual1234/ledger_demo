import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';


import 'app/modules/home/binding/landing_binding.dart';
import 'app/routes/app_route.dart';
import 'app/utils/app_constant.dart';
import 'app/utils/color_constant.dart';

void main() {
  //this function
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialBinding: LandingBinding(),
      title: AppConstants.app_title,
      theme: themeData(),
      defaultTransition: Transition.fade,
      initialRoute: AppRoute.splashScreen,
      getPages: AppRoute.routes,
    );


  }
}

