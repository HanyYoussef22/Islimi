import 'package:flutter/material.dart';
import 'package:islami/Home_Layout.dart';
import 'package:islami/suraDetails/SuraDetails.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'AhdethDetails/AhdethDetails.dart';
import 'My_Themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('ar', ''), // Spanish, no country code
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.roudeName,
      routes:{
        HomeLayout.roudeName:(context)=>HomeLayout(),
        SuraDetails.roudeName:(context)=>SuraDetails(),
        AhdethDetails.roudeName:(context)=>AhdethDetails(),
      },

      theme: MyThemesData.lightTheme,
      darkTheme: MyThemesData.darkTheme,
      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(
      //       backgroundColor: Colors.transparent,
      //     elevation: 0.0,
    //     )
    //   ),
    );
  }

}
