import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade600,
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me Anything',
            style: TextStyle(
              color: Colors.white
            ),),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: magicPage(),
      ),
    );
  }
}
class magicPage extends StatefulWidget {
  const magicPage({super.key});

  @override
  State<magicPage> createState() => _magicPageState();
}

class _magicPageState extends State<magicPage> {

  int position=1;
  void changePosition(){
    setState(() {

      position= Random().nextInt(5)+1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Row(
      children: [Expanded(child: TextButton(
          onPressed:(){
            changePosition();
    },child:Image.asset('images/ball$position.png'))
      ),],
    ),);
  }


}
