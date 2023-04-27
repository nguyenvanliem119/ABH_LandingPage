// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:xpense/pages/home.dart';
import 'package:xpense/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Học Flutter - Xpense',
      theme: ThemeData(
          fontFamily: 'Inter',
          brightness: Brightness.light,
          primaryColor: AppColors.primary),
      // ignore: prefer_const_constructors
      home: Home(),
    );
  }
}
