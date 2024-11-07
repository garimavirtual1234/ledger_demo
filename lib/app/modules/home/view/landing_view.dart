import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_constant.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../controllers/landing_controller.dart';

// The main landing screen of the app.
// It serves as a central hub or entry point, displaying options and navigation
// to different sections of the app.
class LandingView extends GetView<LandingPageController> {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: controller.getPage(controller.tabIndex.value),
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: controller.tabIndex.value,
          type: BottomNavigationBarType.fixed,
          onTap: controller.changeIndex,
          selectedLabelStyle: TextStyle(color: kPrimaryColor,fontSize: 14),
          unselectedLabelStyle: TextStyle(color: kSubtitleTextColor,fontSize: 14),
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: kSubtitleTextColor,
          items: const [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(homeIcon),size: 24,), label: AppConstants.home),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(incomeIcon),size: 24,), label: AppConstants.income),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(expensesIcon),size: 24,), label:AppConstants.expenses),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(assetsIcon),size: 24,), label: AppConstants.assets),
            BottomNavigationBarItem(icon: Icon(Icons.assessment_outlined,size: 24,), label: AppConstants.tax),
          ],

        ),
      ),
    );
  }
}
