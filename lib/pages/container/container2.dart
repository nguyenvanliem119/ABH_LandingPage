import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../widgets/containerRight.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 100, right: 100),
      width: w,
      child: containerRight(
        '02',
        'Mangaged Services',
        '15 Years',
        'experience',
        'We support companies in the process of migrating their existing infrastructure to the cloud, whether updating the business tools already in use or creating completely new, technologically advanced IT solutions.',
        'images/container1p.png',
      ),
    );
  }
}
