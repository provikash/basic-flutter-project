import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:quickalert/quickalert.dart';

Quiz_brain QuestionBrain= new Quiz_brain();


void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Quizzpage(),
          ),
        ),
      ),
    ));
  }
}

class Quizzpage extends StatefulWidget {
  @override
  QuizzpageState createState() => QuizzpageState();
}

class QuizzpageState extends State<Quizzpage> {

    List<Icon>scorekeeper=[Icon(Icons.close,color: Colors.red,)];






    void  checkAnswer(bool userPicked){

      bool correctAnswer= QuestionBrain.getAnswer();

      setState(() {

      if(QuestionBrain.isFinised()==true){


        QuickAlert.show(
          context: context,
          type: QuickAlertType.confirm,
          text: 'You Completed Quiz Successfully!'
              'Do You Want to Restart again ?',
          confirmBtnText: 'Yes',
          confirmBtnColor: Colors.green,
        );

        scorekeeper=[];
        QuestionBrain.reset();
      }else{
        if(userPicked==correctAnswer){
          scorekeeper.add(Icon(Icons.check,color: Colors.green,),);
        }
        else{
          scorekeeper.add(Icon(Icons.close, color: Colors.red,));
        }


      }






        QuestionBrain.nextQuestion();

      });


    }


  @override
  Widget build(BuildContext context) {
    return (Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 8,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(QuestionBrain.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(1.0),

            child: TextButton(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.green),

              ),
              onPressed: () {
                // USER PICKED TRUE
                checkAnswer(true);
              },
              child: Text('True',style: TextStyle(
                color: Colors.white,
                  fontSize: 20
              ),) ,
            ),
          ),
        ),
        SizedBox(
          //Use of SizedBox
          height: 30,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(1.0),

            child: TextButton(
              style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.red)
              ),
              onPressed: () {
                //USER PICKED FALSE

               checkAnswer(false);
              },
              child: Text('False',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),) ,
            ),
          ),
        ),
        SizedBox(
        //Use of SizedBox
        height: 30,
        ),
        //TODO: ROW FOR SCORE
        Row(
          children: scorekeeper,
        )
      ],
    ));
  }
}
