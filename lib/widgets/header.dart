import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.all(20),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            navLogo(),
            Row(
              children: [
                navButton('Home'),
                navButton('About us'),
                navButton('Services'),
                navButton('ABGenie'),
                navButton('Let’s talk'),
              ],
            ),
            SizedBox(width: 20)
          ]),
    );
  }

  Widget navLogo() {
    return Container(
      child: SvgPicture.asset(
        '/images/logo.svg',
        width: 173,
        height: 31,
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
