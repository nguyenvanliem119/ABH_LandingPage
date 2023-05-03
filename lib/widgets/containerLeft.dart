import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

Widget containerLeft(String number, title, title_extrafirst, title_extrasecond,
    description, image) {
  return Container(
      child: ResponsiveGridRow(
    children: [
      ResponsiveGridCol(
        lg: 6,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                number,
                style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(0, 0, 0, 0.1)),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xff628ff6),
                          width: 3.0,
                        ),
                      ),
                    ),
                    child: Text(
                      title_extrafirst,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff628ff6),
                      ),
                    ),
                  ),
                  Text(
                    ' ' + title_extrasecond,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 0.6)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(description,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(EdgeInsets.all(23)),
                  side: MaterialStateProperty.all(
                      BorderSide(width: 1.5, color: Color(0xff628ff6))),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
                ),
                child: Text(
                  'Read more',
                  style: TextStyle(
                    color: Color(0xff628ff6),
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      ResponsiveGridCol(
          lg: 6,
          child: Container(
            child: Image.asset(
              image,
              width: 500,
              height: 460,
            ),
          ))
    ],
  ));
}
