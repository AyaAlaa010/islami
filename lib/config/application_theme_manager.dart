
import 'package:flutter/material.dart';

class ApplicationThemeManager  {
static const Color primaryColor=Color(0XFFB7935F);
static const Color darkTextColor=Color(0XFF242424);



  static ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryColor,
    useMaterial3: true,
    dividerTheme: const DividerThemeData(
      color: primaryColor,
      thickness: 1.5,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,fontFamily: "ElMessiri",color: darkTextColor),
      bodyLarge: TextStyle(fontSize: 25,fontFamily: "ElMessiri",fontWeight: FontWeight.w600,color: darkTextColor),
      bodyMedium: TextStyle(fontSize: 25,fontFamily: "ElMessiri",fontWeight: FontWeight.w400,color: darkTextColor)

    ),

    //AppBar
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: darkTextColor,fontFamily: "ElMessiri")

    ),
      //Navigation
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: primaryColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            fontFamily: "ElMessiri",
            fontSize: 17,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          selectedIconTheme: IconThemeData(
            color: Colors.black,
          ),
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(
              fontFamily: "ElMessiri",
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.normal
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
          )
      )
  );

}
