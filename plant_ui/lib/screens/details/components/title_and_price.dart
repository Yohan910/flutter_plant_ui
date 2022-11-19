import 'package:flutter/material.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    @required this.title,
    @required this.country,
    @required this.price,
  }) : super(key: key);

  final String title;
  final String country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Colors.green;
    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$title\n",
                    style: Theme.of(context).textTheme.headline.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextSpan(
                    text: "\n$country",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline
                .copyWith(color: primaryColor),
          ),
        ],
      ),
    );
  }
}
