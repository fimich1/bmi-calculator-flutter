import 'package:flutter/material.dart';
import 'parametry.dart';


class CardChild extends StatelessWidget {

  CardChild ({@required this.cardIcon, @required this.iconText});

  final IconData cardIcon;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: kLabelTextStile,
        )
      ],
    );
  }
}


