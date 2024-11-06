import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/common_text.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';

class ActionList extends StatelessWidget {
  final String actionName;
  final String actionDate;
  final String totalPrice;
  final String price;
  final String status;

  const ActionList({super.key,
    required this.actionName,
    required this.actionDate,
    required this.price,
    required this.totalPrice,
    required this.status

  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                status == 'incoming'? CircleAvatar(
                    backgroundColor: kIncomingBgColor,
                    child: ImageIcon(AssetImage(incomeIcon))
                ):CircleAvatar(
                    backgroundColor: kOutGoingBgColor,
                    child: ImageIcon(AssetImage(expensesIcon))
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomizedTextWidget(textValue: actionName,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    CustomizedTextWidget(textValue:actionDate,
                        style: const TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(totalPrice, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(price, style: const TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
          ],
        ),
      );


  }
}