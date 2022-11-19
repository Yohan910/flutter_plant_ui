import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_ui/screens/details/components/icon_card.dart';

class IconsAndImagenCard extends StatelessWidget {
  const IconsAndImagenCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 40,
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    IconCard(
                      imageIcon: "assets/icons/icon_2.svg",
                      press: () {},
                    ),
                    IconCard(
                      imageIcon: "assets/icons/icon_3.svg",
                      press: () {},
                    ),
                    IconCard(
                      imageIcon: "assets/icons/icon_4.svg",
                      press: () {},
                    ),
                    IconCard(
                      imageIcon: "assets/icons/sun.svg",
                      press: () {},
                    ),
                  ],
                ),
              ),
            ),
            _ImageCard(
              image: "assets/images/img.png",
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  final String image;

  const _ImageCard({
    Key key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color primaryColor = Colors.green;

    return Container(
      height: size.height * 0.8,
      width: size.width * 0.65,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 60,
            color: primaryColor.withOpacity(0.29),
          )
        ],
        image: DecorationImage(
          alignment: Alignment.centerLeft,
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(63),
          bottomLeft: Radius.circular(63),
        ),
      ),
    );
  }
}
