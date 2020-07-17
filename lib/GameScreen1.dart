import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:paheli/QuestionBank1.dart';
import 'package:paheli/choosing_screen.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:flutter_icons/flutter_icons.dart';

QuestionBank1 questionBank1=QuestionBank1();

bool tapState1=false;
bool tapState2=false;
bool tapState3=false;
bool tapState4=false;
int correctCount=0;
int incorrectCount=0;
List<Icon> addans1=[];

class GameScreen1 extends StatefulWidget {
  GameScreen1({this.correctQuestions,this.incorrectQuestion});
  final correctQuestions;
  final incorrectQuestion;
  @override
  _GameScreen1State createState() => _GameScreen1State();
}

class _GameScreen1State extends State<GameScreen1> {
  int currentQuestionNumber =questionBank1.questionNumber();
  int totalQuestions =10;
  int correctQuestions = correctCount;
  int incorrectQuestions = incorrectCount;
  String button()
  {
    if(addans1.length==9){
      return "Finish";
    }
    else{
      return "Next";
    }
  }
  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('You are going to exit the application!!'),
            actions: <Widget>[
              FlatButton(
                child: Text('NO'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text('YES'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          leading: IconButton(icon: Icon(Ionicons.ios_close_circle,size: 35.0,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          constraints: BoxConstraints.expand(),
          child: SafeArea(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 1),
                    child: SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: StepProgressIndicator(
                        totalSteps: 10,
                        currentStep: addans1.length+1,
                        size: 20,
                        selectedColor: Colors.lightGreen,
                        unselectedColor: Colors.black12,
                        roundedEdges: Radius.circular(10),
                      ),
                    ),
                  ),
                  QuestionCard(questionName: questionBank1.getQuestion(),answersList: [questionBank1.getAns1(),questionBank1.getAns2(),questionBank1.getAns3(),questionBank1.getAns4(),questionBank1.getCorrectans()]),//See QuestionCard class below to understand.
                  RaisedButton(
                    color: Colors.lightGreen,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    onPressed: (){
                      if(addans1.length==9&&(tapState1==true||tapState2==true||tapState3==true||tapState4==true)){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>Report()));
                      }
                      setState(() {
                        if(tapState1==true||tapState2==true||tapState3==true||tapState4==true)
                          questionBank1.nextQ();
                        addans1.add (Icon (Icons.check));
                        tapState1=false;
                        tapState2=false;
                        tapState3=false;
                        tapState4=false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(button(),style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text('Question :  ${addans1.length+1}/$totalQuestions',style: TextStyle(fontSize: 15.0),),
                  Text('Correct: $correctCount',style: TextStyle(fontSize: 15.0),),
                  Text('Incorrect : $incorrectCount',style: TextStyle(fontSize: 15.0),),
                ],
              )),
        ),
      ),
    );
  }
}
class QuestionCard extends StatefulWidget {
  final questionName;
  final answersList;
  QuestionCard({this.questionName,this.answersList});

  @override
  _QuestionCardState createState() => _QuestionCardState();
}
class _QuestionCardState extends State<QuestionCard> {
  Color box(String ans){
    String correctans=questionBank1.getCorrectans();
    if(ans==correctans){
      correctCount++;
      return Colors.green;

    }
    else if(ans!=correctans){
      incorrectCount++;
      return Colors.red;
    }
    else{
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 400,
        width: double.infinity,
        child: Card(
          elevation: 1,
          color: Colors.white70,
          shadowColor: Colors.lightBlueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.questionName,style: TextStyle(color: Colors.black, fontSize: 18.0),),
                SizedBox(height: 20.0,),
                AnswerTile(answerName: widget.answersList[0],tap: (){
                  setState(() {
                    tapState1=true;
                  });
                },
                    colour:tapState1?box(widget.answersList[0]):Colors.white),

                AnswerTile(answerName: widget.answersList[1],tap: (){
                  setState(() {
                    tapState2=true;
                  });
                },
                    colour: tapState2?box(widget.answersList[1]):Colors.white),
                AnswerTile(answerName: widget.answersList[2],tap: (){
                  setState(() {
                    tapState3=true;
                  });
                },
                    colour: tapState3?box(widget.answersList[2]):Colors.white),
                AnswerTile(answerName: widget.answersList[3],tap:(){
                  setState(() {
                    tapState4=true;
                  });
                },
                    colour: tapState4?box(widget.answersList[3]):Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class AnswerTile extends StatefulWidget {
  final answerName;
  final tap;
  final colour;
  AnswerTile({this.answerName,this.tap,this.colour});

  @override
  _AnswerTileState createState() => _AnswerTileState();
}

class _AnswerTileState extends State<AnswerTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
        elevation: 10.0,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
              color: widget.colour),
          height: 50.0,
          width: double.infinity,
          child: ListTile(
            title: Text(widget.answerName),
            onTap: widget.tap,
          ),
        ),
      ),
    );
  }
}

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('You are going to exit the application!!'),
            actions: <Widget>[
              FlatButton(
                child: Text('NO'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text('YES'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>ChoosingScreen()));
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          title: Text("Score Card",style: TextStyle(
              color: Colors.white
          ),),
          actions: <Widget>[
            Icon(Icons.close,),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top:40.0,left: 40,right: 40),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ScoreCards(text:"Your Score : $correctCount"),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ScoreCards(text: "Questions: 10",),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ScoreCards(text: "Incorrects:$incorrectCount",),
              ),
              Padding(
                padding: const EdgeInsets.only(left:180.0),
                child: RaisedButton(onPressed: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Are you sure?'),
                          content: Text('You are going to exit the application!!'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('NO'),
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                            ),
                            FlatButton(
                              child: Text('YES'),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context)=>ChoosingScreen()));
                              },
                            ),
                          ],
                        );
                      });
                },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  color: Colors.black,
                  child: Text("Exit",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ScoreCards extends StatelessWidget {
  final String text;
  ScoreCards({this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightGreen,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 25,),
              Text(text,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold),),
              SizedBox(width: 25,)
            ],
          ),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}
