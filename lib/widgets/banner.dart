import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:xpense/utils/colors.dart';

class bannerTop extends StatefulWidget {
  const bannerTop({super.key});

  @override
  State<bannerTop> createState() => _bannerTopState();
}

class _bannerTopState extends State<bannerTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            lg: 6,
            child: Container(
              padding: EdgeInsets.only(left: 100.0, right: 100.0),
              alignment: Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  contentLeft(
                      'Time wastes \ncountless hours by  \nspreadsheets',
                      'Our ABGenie award-winning HRIS platform to streamline \nyour people processes, and watch your payroll and benefits \nget done like magic.'),
                  SizedBox(height: 20),
                  navButton('Get Started'),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            lg: 6,
            child: Container(
              height: 100,
              alignment: Alignment(0, 0),
            ),
          ),
        ],
      ),
    );
  }

  Widget contentLeft(String title, Description) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
          SizedBox(height: 30),
          Text(
            Description,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(255, 255, 255, 0.5)),
                padding: MaterialStateProperty.all(EdgeInsets.all(23))),
            child: Text(text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ))));
  }
}
