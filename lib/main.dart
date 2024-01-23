import 'package:flutter/material.dart';
import 'package:food_delivery/common/constants.dart';
import 'package:food_delivery/common/routes.dart';
import 'package:food_delivery/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: routes,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
      )
    );
  }
}