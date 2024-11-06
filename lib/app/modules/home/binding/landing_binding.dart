

import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';
import '../controllers/landing_controller.dart';

class LandingBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut<LandingPageController>(()=>LandingPageController());
    Get.lazyPut<HomePageController>(()=>HomePageController());
  }

}
