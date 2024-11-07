import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/home_page.dart';

//This class is used by LandingView to manage variable and events.

class LandingPageController extends GetxController {
  // Initially selecting bottom tab "Home"
  RxInt tabIndex = 0.obs;

  // Function to update the selected index
  void changeIndex(index) {
    tabIndex.value = index;
  }

  //Display the appropriate page based on tabIndex
  Widget getPage(int index) {
    switch (index) {
      case 0:
        return const FinanceDashboard();
      case 1:
        return const Center(child: Text('Coming Soon'));
      case 2:
        return const Center(child: Text('Coming Soon'));
      case 3:
        return const Center(child: Text('Coming Soon'));
      case 4:
        return const Center(child: Text('Coming Soon'));
      default:
        return const FinanceDashboard();
    }
  }
}
