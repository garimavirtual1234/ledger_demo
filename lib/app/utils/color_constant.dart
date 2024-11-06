import 'package:flutter/material.dart';

Color? kPrimaryColor = const Color(0xFF00B050);
Color? kSecondaryColor = const Color(0xFFFFFFFF);
Color? kBgColor = const Color(0xFFEEEEEE);
Color kBlackColor = const Color(0xFF0D0D0D);
Color kTextColor =  const Color(0xFF0D0D0D);
Color kSubtitleTextColor =  Color(0xFF8b8b8c);
Color kButtonTextColor = const Color(0xFFE2F5F6);
Color kGreyButtonColor = const Color(0xFFE3E7E6);
Color kIncomingBgColor = const Color(0xFFA5E4FB);
Color kOutGoingBgColor = const Color(0xFFD7EFA3);

Color kDarkGreenColor = const Color(0xFF207352);


Color? kTealColor = const Color(0XFF28B59D);
Color? kOrangeAccentColor = const Color(0xFFFFD0B3);

Color? kTextColorRed = const Color(0xFFF4517E);
Color buttonFirstColor =  const Color(0xFFEF3B85);
Color welcomeButtonColor =  const Color(0xFF747373);
Color buttonSecondColor =  const Color(0xFFF01828);
Color transparentColor =  const Color(0xFFFFFFFF);

Color gradientColorOne =  const Color(0xFFC7D4F9);
Color gradientColorTwo =  const Color(0xFFC9D3EC);
Color gradientColorThree =  const Color(0xFFE8EBF4);
Color gradientColorFour =  const Color(0xFFF4C8D7);
Color gradientColorFive =  const Color(0xFFFFF5EB);
Color badgeTextLevelColour =  const Color(0xFFF11B30);
Color imageCardBackgroundColor =  const Color(0xFFE80663);
Color dividerColor =  const Color(0xFFD9D9D9);
Color blackTextColor =  const Color(0xFF212529);
Color notificationTextColor =  const Color(0xFF343434);

ThemeData themeData() {
  return ThemeData(
    fontFamily: 'Montserrat',
    primaryColor: kBlackColor,
    textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 18.0,
        //  fontWeight: FontWeight.bold,
          color: kBlackColor,
        ),
        displayMedium: TextStyle(
          fontSize: 16.0,
         // fontWeight: FontWeight.w600,
          color: kBlackColor,
        ),
        displaySmall: TextStyle(
          fontSize: 14.0,
         // fontWeight: FontWeight.w600,
          color: kBlackColor.withOpacity(0.8),
        ),
        headlineMedium: TextStyle(
          fontSize: 16,
        //  fontWeight: FontWeight.w600,
          color: kBlackColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
         // fontWeight: FontWeight.bold,
          color: kBlackColor.withOpacity(0.6),
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
       //   fontWeight: FontWeight.w600,
          color: kBlackColor,
        ),
        titleMedium: TextStyle(
          fontSize: 12,
          color: kBlackColor.withOpacity(0.7),
         // fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
          fontSize: 12,
          color: kBlackColor,
     //     fontWeight: FontWeight.w600,
        )),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.only(top: 8, left: 12, right: 10),
      labelStyle: const TextStyle(
        color: Colors.white,
     //   fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      hintStyle: TextStyle(
        color: kBlackColor.withOpacity(0.8),
      //  fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      border: InputBorder.none,
    ),
  );
}