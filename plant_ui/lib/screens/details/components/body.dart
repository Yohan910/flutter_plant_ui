import 'package:flutter/material.dart';
import 'package:plant_ui/screens/details/components/buynow_and_description_btn.dart';
import 'package:plant_ui/screens/details/components/icons_and_imagen.dart';
import 'package:plant_ui/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  final String title, country, price;

  const Body({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          IconsAndImagenCard(),
          TitleAndPrice(title: "Angelica", country: "Russian", price: 400),
          BuyNowAndDescriptionBtn(),
        ],
      ),
    );
  }
}
