import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0XFF8D8E98),
);

class GenderCard extends StatelessWidget {

  GenderCard({@required this.genderIcon, this.genderLabel});
  final IconData genderIcon;
  final String genderLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 70.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(genderLabel,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
