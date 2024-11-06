import 'package:flutter/material.dart';

import '../../../utils/color_constant.dart';


class SummaryCard extends StatelessWidget {
  final String title;
  final String amount;
  final String buttonText;
  final Color buttonColor;
  final VoidCallback onPressed;

  const SummaryCard({
    required this.title,
    required this.amount,
    required this.buttonText,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style:  TextStyle(fontSize: 16, color: kSubtitleTextColor)),
         // const SizedBox(height: 8),
          Text(amount, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
           SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton.icon(
              onPressed: onPressed,
              icon: const Icon(Icons.add),
              label: Text(buttonText),
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