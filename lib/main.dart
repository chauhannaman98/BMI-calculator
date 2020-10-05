
import 'package:flutter/material.dart';

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
            body1: TextStyle(color: Colors.white),
          ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: Theme(
          data: ThemeData.light(),
          child: FloatingActionButton(
            child: Icon(Icons.add),
          )
      ),
    );
  }
}
