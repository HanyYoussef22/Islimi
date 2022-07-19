import 'package:flutter/material.dart';
import 'package:islami/Home_Layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        HomeLayout.roudeName:(context)=>HomeLayout(),
      },
      initialRoute: HomeLayout.roudeName,

    );
  }}
