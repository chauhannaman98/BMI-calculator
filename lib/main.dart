import 'package:flutter/material.dart';
import 'pages/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF1B1D23),
          scaffoldBackgroundColor: Color(0xFF24292E),
          accentColor: Colors.purple,
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          ),
      ),
      home: InputPage(),
    );
  }
}
