import 'package:flutter/material.dart';
import 'package:plant_ui/screens/details/details_screen.dart';

class RecomendPlant extends StatelessWidget {
  const RecomendPlant({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Colors.green;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          _RecomendPlantCard(
            primaryColor: primaryColor,
            image: "assets/images/image_1.png",
            price: 400,
            title: "Samantha",
            country: "Russian",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          _RecomendPlantCard(
            primaryColor: primaryColor,
            image: "assets/images/image_2.png",
            price: 100,
            title: "Angelina",
            country: "España",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          _RecomendPlantCard(
            primaryColor: primaryColor,
            image: "assets/images/image_3.png",
            price: 250,
            title: "Sandra",
            country: "Suiza",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _RecomendPlantCard extends StatelessWidget {
  const _RecomendPlantCard({
    Key key,
    @required this.primaryColor,
    this.image,
    this.title,
    this.country,
    this.press,
    this.price,
  }) : super(key: key);

  final Color primaryColor;
  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 20 * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: primaryColor.withOpacity(0.23))
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: primaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: primaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
