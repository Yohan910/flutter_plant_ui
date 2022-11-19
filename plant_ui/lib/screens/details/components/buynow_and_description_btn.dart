import 'package:flutter/material.dart';

class BuyNowAndDescriptionBtn extends StatelessWidget {
  const BuyNowAndDescriptionBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color primaryColor = Colors.green;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 84,
            width: size.width / 2,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
              ),
              color: primaryColor,
              child: Text(
                "Buy Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Text("Description"),
            ),
          ),
        ],
      ),
    );
  }
}
