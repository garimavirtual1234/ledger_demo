import 'package:flutter/material.dart';


import '../../../../widgets/common_text.dart';
import '../../../utils/app_constant.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/screen_size.dart';
import '../widgets/action_list.dart';
import '../widgets/summary_card_widget.dart';
import '../widgets/toogle_button.dart';

class FinanceDashboard extends StatelessWidget {
  const FinanceDashboard({super.key});

  @override
  Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         backgroundColor: kBgColor,
         appBar: AppBar(
           centerTitle: true,
           toolbarHeight: 120,
           flexibleSpace: Container(
             decoration:  BoxDecoration(
                 gradient: LinearGradient(
                     begin: Alignment.topCenter,
                     end: Alignment.bottomCenter,
                     colors: [
                       kPrimaryColor!,
                       kBgColor!
                     ])
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ListTile(
                   leading: const CircleAvatar(
                     radius: 30,
                     backgroundImage: AssetImage(avtarImage),
                   ),
                   trailing: ElevatedButton.icon(
                     onPressed: () {},
                     icon: ImageIcon(const AssetImage(chatIcon),color: kDarkGreenColor,),
                     label: CustomizedTextWidget(textValue: AppConstants.assistant,style: TextStyle(
                       color: kDarkGreenColor,
                       fontWeight: FontWeight.bold
                     ),),
                     style: ElevatedButton.styleFrom(
                       backgroundColor: kSecondaryColor,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30),
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 8,
                 ),
                 const ToggleButton()
       
               ],
             ),
           ),
         ),
         body: Padding(
           padding: const EdgeInsets.all(16.0),
           child: SingleChildScrollView(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 // Tax and Credit Summary
                 Container(
                   padding: const EdgeInsets.all(16),
                   decoration: BoxDecoration(
                     color: kSecondaryColor,
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      CustomizedTextWidget(
                        textValue:
                         AppConstants.totalTax,
                         style: TextStyle(fontSize: 16, color: kSubtitleTextColor),
                       ),
                      // const SizedBox(height: 5),
                     CustomizedTextWidget(
                     textValue:  '${AppConstants.currency} 2 376,90',
                         style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                       ),
       SizedBox(height: 20,),
                       Row(
                         //mainAxisAlignment: MainAxisAlignment.,
                        crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            
                             children: [
                               CustomizedTextWidget(
                                 textValue:
                                 AppConstants.credits,
                                 style: TextStyle(fontSize: 16, color: kSubtitleTextColor),
                               ),
                               CustomizedTextWidget(
                                 textValue:   '${AppConstants.currency} 1 500,90',
                                 style: TextStyle(fontSize: 16),
                               ),

                             ],
                           ),

                            IconButton(
                            padding: EdgeInsets.only(top: 20),
                              onPressed: () {},
                              icon: const ImageIcon(AssetImage(penIcon),color : Colors.black,size: 20)
                            ),
                           Expanded(child: Container()),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                             backgroundColor: kGreyButtonColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: CustomizedTextWidget(textValue: AppConstants.taxStats,style: TextStyle(color: kTextColor ),),
                            ),
                         ],
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(height: 16),
                 // Income and Expense Summary
                 Row(
                   children: [
                     Expanded(
                       child: SummaryCard(
                         title: AppConstants.totalIncome,
                         amount: '£ 38 576,90',
                         buttonText: AppConstants.newIncome,
                         buttonColor: Colors.green,
                         onPressed: () {},
                       ),
                     ),
                     const SizedBox(width: 16),
                     Expanded(
                       child: SummaryCard(
                         title: AppConstants.totalExpense,
                         amount: '£ 38 576,90',
                         buttonText: AppConstants.newExpense,
                         buttonColor: Colors.green,
                         onPressed: () {},
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 24),
                 // Actions Section
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     const CustomizedTextWidget(
                      textValue:  'Actions',
                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                     ),
                     TextButton(
                       onPressed: () {},
                       style: TextButton.styleFrom(
                         backgroundColor: kSecondaryColor,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30),
                         ),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 8,right: 8),
                         child: CustomizedTextWidget(textValue: AppConstants.seeAll,style: TextStyle(color: kTextColor ),),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 16),
             SizedBox(
               height: getSize(context).height*0.4,
               child: ListView.builder(
                   physics: const NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 itemCount: 4,
                   itemBuilder: (context,index){
                   return ActionList(actionName: 'Action name',
                       actionDate: 'Income 12 Dec',
                       price: "${AppConstants.currency} 9,32",
                       totalPrice: "${AppConstants.currency} 9,32", status: 'incoming');
               }),
             )
               ],
             ),
           ),
         ),
       
       ),
     );
  }
}





