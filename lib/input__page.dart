import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'round_card.dart';
import 'card_child_icon.dart';
import 'parametry.dart';


enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  // Color maleCardColour = colourOfRoundedCard_inactive;
  // Color femaleCardColour = colourOfRoundedCard_inactive;
  //
  // // 1 - male, 2 - female
  // void updateColour(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColour == colourOfRoundedCard_inactive) {
  //       maleCardColour = colourOfRoundedCard_active;
  //       femaleCardColour = colourOfRoundedCard_inactive;
  //     } else
  //       maleCardColour = colourOfRoundedCard_inactive;
  //   }
  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColour == colourOfRoundedCard_inactive) {
  //       femaleCardColour = colourOfRoundedCard_active;
  //       maleCardColour = colourOfRoundedCard_inactive;
  //     } else
  //       femaleCardColour = colourOfRoundedCard_inactive;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ЖИРКОМБИНАТ ЧЕЕК'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RoundedCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? kColourOfRoundedCard_active : kColourOfRoundedCard_inactive,
                    cardChild: CardChild(
                      iconText: 'MALE',
                      cardIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: RoundedCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? kColourOfRoundedCard_active : kColourOfRoundedCard_inactive,
                    cardChild: CardChild(
                      cardIcon: FontAwesomeIcons.venus,
                      iconText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RoundedCard(
              colour: kColourOfRoundedCard_active,
              cardChild: Column(
                children: [
                  Text('HEIGHT', style: kLabelTextStile,),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RoundedCard(colour: kColourOfRoundedCard_active),
                ),
                Expanded(
                  child: RoundedCard(colour: kColourOfRoundedCard_active),
                ),
              ],
            ),
          ),
          Container(
            color: kColourOfPinkieBottom,
            margin: EdgeInsets.only(top: 5.0),
            width: double.infinity,
            height: kBottomPinkieHeight,
          ),
        ],
      ),
    );
  }
}
