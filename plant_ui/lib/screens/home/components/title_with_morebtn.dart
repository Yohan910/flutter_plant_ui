import 'package:flutter/material.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    @required this.primaryColor,
    this.press,
    this.title,
  }) : super(key: key);

  final Color primaryColor;
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            _TitleWithCustomUnderLine(text: title),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: primaryColor,
                onPressed: press,
                child: Text(
                  "More",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class _TitleWithCustomUnderLine extends StatelessWidget {
  final String text;

  const _TitleWithCustomUnderLine({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 7,
                  color: Colors.green.withOpacity(0.25),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
