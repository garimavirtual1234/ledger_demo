
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_route.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/screen_size.dart';

// A splash screen widget that displays an introductory screen for 3 seconds
// before navigating to the main screen.
class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),
            ()=> Get.offAllNamed(AppRoute.landingScreen)

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset(
            appIconImage,// Image asset for the app icon.
            height: getSize(context).height * 0.3,
            width: getSize(context).width * 0.3,
            fit: BoxFit.fitHeight,
          ),
          SizedBox(
            height: getSize(context).height * 0.1,
          ),

          Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor!),
            ),
          ),
        ],
      ),
    );
  }
}

