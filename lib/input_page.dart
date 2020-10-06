import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF2C313A);
const inactiveCardColour = Color(0xFF20242A);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColour;
  Color femaleCardColor = inactiveCardColour;

  void updateColor(Gender selectedGender)  {
    if(selectedGender == Gender.male) {
      if(maleCardColor == inactiveCardColour) {
        maleCardColor = activeCardColour;
        femaleCardColor = inactiveCardColour;
      } else  {
        maleCardColor = inactiveCardColour;
      }
    }
    if(selectedGender == Gender.female) {
      if(femaleCardColor == inactiveCardColour) {
        femaleCardColor = activeCardColour;
        maleCardColor = inactiveCardColour;
      } else  {
        femaleCardColor = inactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('BMI Calculator')
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.male);
                    });
                  },
                  child: ReusableCard(
                    color: maleCardColor,
                    cardChild: GenderCard(
                      genderIcon: FontAwesomeIcons.mars,
                      genderLabel: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  child: ReusableCard(
                    color: femaleCardColor,
                    cardChild: GenderCard(
                      genderIcon: FontAwesomeIcons.venus,
                      genderLabel: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
                color: inactiveCardColour
            ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                    color: inactiveCardColour
                ),
              ),
              Expanded(
                child: ReusableCard(
                    color: inactiveCardColour
                ),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
