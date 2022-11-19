import 'package:flutter/material.dart';
import 'package:plant_ui/screens/home/components/featured_plants.dart';
import 'package:plant_ui/screens/home/components/header_with_searchbox.dart';
import 'package:plant_ui/screens/home/components/recomend_plant.dart';
import 'package:plant_ui/screens/home/components/title_with_morebtn.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Colors.green;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(
            primaryColor: primaryColor,
          ),
          TitleWithMoreBtn(
              title: "Recomended", primaryColor: primaryColor, press: () {}),
          RecomendPlant(),
          TitleWithMoreBtn(
              title: "Featured Plants",
              primaryColor: primaryColor,
              press: () {}),
          FeaturedPlants(),
        ],
      ),
    );
  }
}
