import 'package:flutter/material.dart';
import 'package:ledger_demo/app/utils/screen_size.dart';
import 'package:ledger_demo/widgets/common_text.dart';

import '../../../utils/color_constant.dart';

// A reusable widget that displays a summary card with a title, an amount, and a button on the home page
class SummaryCard extends StatelessWidget {
  final String title;
  final String amount;
  final String buttonText;
  final Color buttonColor;
  final VoidCallback onPressed;

  const SummaryCard({super.key,
    required this.title,
    required this.amount,
    required this.buttonText,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: getSize(context).height*0.19,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style:  TextStyle(fontSize: 16, color: kSubtitleTextColor),),
         // const SizedBox(height: 8),
          Text(amount, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
           const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton.icon(
              onPressed: onPressed,
              icon: const Icon(Icons.add),
              label: CustomizedTextWidget(textValue: buttonText),
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                foregroundColor: kSecondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}