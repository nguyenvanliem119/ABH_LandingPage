import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../widgets/containerLeft.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 100, right: 100),
      width: w,
      child: containerLeft(
        '01',
        'Technology Consulting',
        '18 Years',
        'experience',
        'We support companies in the process of migrating their existing infrastructure to the cloud, whether updating the business tools already in use or creating completely new, technologically advanced IT solutions.',
        'images/container1p.png',
      ),
    );
  }
}
