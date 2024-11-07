import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ledger_demo/widgets/common_text.dart';

import '../../../utils/app_constant.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/screen_size.dart';
import '../controllers/home_page_controller.dart';


// A custom toggle button widget for switching between "Month" and "Year" views on the homepage.
// This widget uses GetX's reactive state management to update the selected
// button (either "Month" or "Year") in real-time. It changes the appearance of
// each button based on the user's selection, with a distinct color for the active button.
class ToggleButton extends GetView<HomePageController> {
  const ToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return
      LayoutBuilder(builder: (context, constraints) {
        double fontSize = constraints.maxWidth * 0.10;
         return Obx(() {
            return Container(
              width: getSize(context).width*0.4,
              decoration: BoxDecoration(
                color:  kBgColor,
                borderRadius:   BorderRadius.circular(30)
              ),
              child: Center(
                child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // "Month" button
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.isMonthSelected.value = true;
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                            color:  controller.isMonthSelected.value
                                ? kPrimaryColor // Active color
                                : Colors.transparent, // Inactive color
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: CustomizedTextWidget(
                           textValue:    AppConstants.month,
                              style: TextStyle(
                                color:  controller.isMonthSelected.value
                                    ? kSecondaryColor
                                    : kSubtitleTextColor, // Inactive text color
                               // fontWeight: FontWeight.bold,
                                fontSize: fontSize*0.4
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // "Year" button
                     Expanded(
                       child: GestureDetector(
                        onTap: () {
                          controller.isMonthSelected.value = false;
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                            color:  controller.isMonthSelected.value
                                ? Colors.transparent//active Color
                                :  kPrimaryColor,// Inactive color
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: CustomizedTextWidget(

                            textValue:   AppConstants.year,
                              style: TextStyle(
                                color:  controller.isMonthSelected.value
                                    ?
                                kSubtitleTextColor
                                    : kSecondaryColor ,// Inactive text color
                               // fontWeight: FontWeight.bold,
                                  fontSize: fontSize*0.4
                              ),
                            ),
                          ),
                        ),
                                       ),
                     ),
                  ],
                ),
              ),
            );
          });
       }
     );

  }
}


