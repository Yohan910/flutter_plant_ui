import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconCard extends StatelessWidget {
  final String imageIcon;
  final Function press;

  const IconCard({
    Key key,
    this.imageIcon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color primaryColor = Colors.green;

    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18),
        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
        height: 62,
        width: 62,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 22,
              color: primaryColor.withOpacity(0.22),
            ),
          ],
        ),
        child: SvgPicture.asset(imageIcon),
      ),
    );
  }
}
