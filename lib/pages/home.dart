import 'package:flutter/material.dart';
import 'package:xpense/pages/container/container2.dart';
import 'package:xpense/pages/container/container3.dart';
import 'package:xpense/pages/container/container4.dart';
import '../utils/constants.dart';

import '../widgets/banner.dart';
import '../widgets/header.dart';
import '../widgets/navbar.dart';
import '../widgets/partner.dart';
import 'container/container1.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              NavBar(),
              Header(),
              bannerTop(),
              Partner(),
              Container(
                color: Colors.white,
                width: w,
                padding:
                    EdgeInsets.only(top: 40, bottom: 40, left: 320, right: 320),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'What we do',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      'We align techmology with your business goals to support a future proof stategy',
                      style:
                          TextStyle(fontSize: 44, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container1(),
              Container2(),
              Container3(),
              Container4(),
            ],
          ),
        ),
      ),
    );
  }
}
