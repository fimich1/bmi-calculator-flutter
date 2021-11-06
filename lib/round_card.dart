import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {

  RoundedCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(

        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(8.0),
        ),
        margin: new EdgeInsets.all(15.0),
        height: 200.0,
      ),
    );
  }
}