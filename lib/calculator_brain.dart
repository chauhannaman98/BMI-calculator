import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain {

  CalculatorBrain({this.height, this.weight, this.gender});
  final height;
  final weight;
  final gender;

  bool _validGender;
  double _bmi;
  String _bmiStatus, _interpretation;
  Color _textColor;

  String calculateBMI() {
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult()  {
    if(gender.toString()=='Gender.male') {
      _validGender = true;
      if(_bmi>40) {
        _bmiStatus='Very severely obese';
        _interpretation='Please see a doctor. You are at high health risk';
        _textColor=Color(0XFFF94340);
      } else if(_bmi>35)  {
        _bmiStatus='Severely obese';
        _interpretation='You are at high risk! Please workout on reducing body weight';
        _textColor=Color(0XFFFB693F);
      } else if(_bmi>30)  {
        _bmiStatus='Moderately obese';
        _interpretation='You are a bit obese. Stop eating junk and exercise';
        _textColor=Color(0XFFF49F67);
      } else if(_bmi>25)  {
        _bmiStatus='Overweight';
        _interpretation='You have a higher than normal body weight. Try to exercise more';
        _textColor=Color(0XFFF69C3C);
      } else if(_bmi>18.5)  {
        _bmiStatus='Normal';
        _interpretation='You have a normal body weight. Good job!';
        _textColor=Color(0XFF6BB557);
      } else if(_bmi>16)  {
        _bmiStatus='Underweight';
        _interpretation='You have a lower than normal body weight. You can eat a bit more.';
        _textColor=Color(0XFF79D9F0);
      } else if(_bmi>15)  {
        _bmiStatus='Severely Underweight';
        _interpretation='You have very low body weight. Eat more and hit the gym.';
        _textColor=Color(0XFF0A97FA);
      } else  {
        _bmiStatus='Very severely Underweight';
        _interpretation='You are very thin and it may lead to deficiencies. You need to see a doctor.';
        _textColor=Color(0xFF027ACC);
      }
    } else if(gender.toString()=='Gender.female') {
      _validGender = true;
      if(_bmi>41.3) {
        _bmiStatus='Very severely obese';
        _interpretation='Please see a doctor. You are at high health risk';
        _textColor=Color(0XFFF94340);
      } else if(_bmi>36.3)  {
        _bmiStatus='Severely obese';
        _interpretation='You are at high risk! Please workout on reducing body weight';
        _textColor=Color(0XFFFB693F);
      } else if(_bmi>31.1)  {
        _bmiStatus='Moderately obese';
        _interpretation='You are a bit obese. Stop eating junk and exercise';
        _textColor=Color(0XFFF49F67);
      } else if(_bmi>26)  {
        _bmiStatus='Overweight';
        _interpretation='You have a higher than normal body weight. Try to exercise more';
        _textColor=Color(0XFFF69C3C);
      } else if(_bmi>19)  {
        _bmiStatus='Normal';
        _interpretation='You have a normal body weight. Good job!';
        _textColor=Color(0XFF6BB557);
      } else if(_bmi>15)  {
        _bmiStatus='Underweight';
        _interpretation='You have a lower than normal body weight. You can eat a bit more.';
        _textColor=Color(0XFF79D9F0);
      } else if(_bmi>13.9)  {
        _bmiStatus='Severely Underweight';
        _interpretation='You have very low body weight. Eat more and hit the gym.';
        _textColor=Color(0XFF0A97FA);
      } else  {
        _bmiStatus='Very severely Underweight';
        _interpretation='You are very thin and it may lead to deficiencies. You need to see a doctor.';
        _textColor=Color(0xFF027ACC);
      }
    } else  {
      _validGender = false;
      _bmiStatus='Enter valid gender';
      _textColor=Colors.white;
    }
    return _bmiStatus;
  }

  String getInterpretation()  {
    return _interpretation;
  }

  bool validInputs()  {
    return _validGender;
  }

  Color getTextColor()  {
    return _textColor;
  }
}
