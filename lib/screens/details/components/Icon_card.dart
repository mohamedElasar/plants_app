import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    this.icon,
  }) : super(key: key);
  final icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: size.height * .03),
        padding: EdgeInsets.all(kDefaultPadding / 2),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  color: kPrimaryColor.withOpacity(.3),
                  blurRadius: 22),
              BoxShadow(
                  offset: Offset(-15, -15), color: Colors.white, blurRadius: 20)
            ]),
        child: SvgPicture.asset(icon));
  }
}
