import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: XylophoneApp());
  }
}



class XylophoneApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              children: <Widget>[


                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                    )
                    ,onPressed: (){}, child:Text(""),),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.pink),
                    )
                    ,onPressed: (){

                  }, child:Text(""),),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.yellow),
                    )
                    ,onPressed: (){

                  }, child:Text(""),),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
                    )
                    ,onPressed: (){}, child:Text(""),),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.purple),
                    )
                    ,onPressed: (){}, child:Text(""),),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.greenAccent),
                    )
                    ,onPressed: (){}, child:Text(""),),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
                    )
                    ,onPressed: (){}, child:Text(""),),
                ),
        ],
              ) ),
      ),
    );
  }
}