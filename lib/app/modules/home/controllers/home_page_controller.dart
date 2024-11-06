
import 'package:get/get.dart';

class HomePageController extends GetxController{

  // Initially selecting "Month"
  var isMonthSelected = true.obs;

  // Function to toggle between Month and Year
  void toggleSelection() {
    isMonthSelected.value = !isMonthSelected.value;
  }


}