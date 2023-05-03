import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Whychoose extends StatefulWidget {
  const Whychoose({super.key});

  @override
  State<Whychoose> createState() => _WhychooseState();
}

class _WhychooseState extends State<Whychoose> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
              lg: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Why choose abhorizon'),
                  Text(
                      'Meet the IT partner your’s actually enjoy working with'),
                  Text(
                      'We’re busting up old IT stereotypes and bringing a human touch back to IT. We’ll help you translate your business needs into an IT environment that works with you, not against you.'),
                ],
              )),
          ResponsiveGridCol(
              lg: 6,
              child: Container(
                child: Image.asset('images/container1p.png'),
              )),
        ],
      ),
    );
  }
}
