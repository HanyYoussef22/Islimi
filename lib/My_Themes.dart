import 'package:flutter/material.dart';

class MyThemesData{
  static Color standerdColor = const Color(0xffB7935F);
  static Color BlackColor = const Color(0xff141A2E);

  //-----------------------------------------------------
  static final ThemeData lightTheme = ThemeData(
      primaryColor: standerdColor,
      canvasColor: standerdColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xff242424)),
      ),
      textTheme: TextTheme(
      headline1:TextStyle(
        fontSize: 30,
        fontWeight:FontWeight.bold ,
        color: BlackColor,
          ),
          headline2: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: BlackColor,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: BlackColor,
        unselectedItemColor: Colors.white,
      ),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white));
  //-----------------------------------------------------

  static final ThemeData darkTheme = ThemeData(
      primaryColor: standerdColor,
      canvasColor: BlackColor,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: BlackColor),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: BlackColor),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xffB7935F),
          )
  ,headline2:TextStyle(
        fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Color(0xffB7935F),
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Color(0xffB7935F),
        unselectedItemColor: Colors.white,
      )
  );
}