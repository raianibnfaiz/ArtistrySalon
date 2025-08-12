import 'package:art/pages/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'Navigation/MainNavigation.dart';

void main() {
  runApp(const SalonApp());
}


class SalonApp extends StatelessWidget {
  const SalonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glamour Salon',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.grey[50],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
        ),
      ),
      home: const MainNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}


