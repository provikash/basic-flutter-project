import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());


class BMICalculator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Inputpage(),
        theme: ThemeData(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              color: Colors.white
            )
          )

        ),
    );
  }

}
class Inputpage extends StatefulWidget{
  @override
  _InputpageState createState() => _InputpageState();

}

class _InputpageState  extends State<Inputpage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){}, child: Icon(Icons.add),),
    );
  }
}