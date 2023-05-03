import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../utils/constants.dart';

class Partner extends StatefulWidget {
  const Partner({super.key});

  @override
  State<Partner> createState() => _PartnerState();
}

class _PartnerState extends State<Partner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ResponsiveGridRow(children: [
        ResponsiveGridCol(
          lg: 2,
          child: Container(
            height: 128,
            padding: EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Our  clients',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF006C9D),
                  ),
                ),
                Text(
                  'They trust us',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
        ResponsiveGridCol(
          lg: 10,
          child: Container(
            child: slidePartner(),
          ),
        ),
      ]),
    );
  }

  Widget slidePartner() {
    return Container(
      child: CarouselSlider(
        options:
            CarouselOptions(autoPlay: true, viewportFraction: 0.2, height: 100),
        items: imagePartner.map((item) {
          return Container(
            child: Image.asset(
              item,
              height: 128,
            ),
          );
        }).toList(),
      ),
    );
  }
}
