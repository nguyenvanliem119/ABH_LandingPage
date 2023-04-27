import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/colors.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(69);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.navbar,
      height: 69,
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: const [
            Icon(
              Icons.mail,
              color: Color.fromRGBO(255, 255, 255, 0.5),
              size: 16.0,
            ),
            SizedBox(width: 5),
            Text(
              'contact@abhorizon.com',
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(255, 255, 255, 0.5)),
            ),
            SizedBox(width: 20),
            Icon(
              Icons.map,
              color: Color.fromRGBO(255, 255, 255, 0.5),
              size: 16.0,
            ),
            SizedBox(width: 5),
            Text(
              '75 Ho Hao Hon, Dist 1, HCMC',
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(255, 255, 255, 0.5)),
            ),
            SizedBox(width: 20),
            Icon(
              Icons.phone,
              color: Color.fromRGBO(255, 255, 255, 0.5),
              size: 16.0,
            ),
            SizedBox(width: 5),
            Text(
              '(+84) 28 3936 0278',
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(255, 255, 255, 0.5)),
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              '/images/fb.svg',
              width: 36,
              height: 36,
            ),
            SizedBox(width: 20),
            SvgPicture.asset(
              '/images/in.svg',
              width: 36,
              height: 36,
            ),
            SizedBox(width: 20),
            SvgPicture.asset(
              '/images/word.svg',
              width: 36,
              height: 36,
            ),
          ],
        )
      ]),
    );
  }
}
