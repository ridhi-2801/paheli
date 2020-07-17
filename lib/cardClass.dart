import 'package:flutter/material.dart';
//import 'game_screen.dart';

class CardClass extends StatelessWidget {
  CardClass({this.text});
  final String text;
  @override
  Widget build(BuildContext context){
    return Card(
      color: Colors.grey,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(text,style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontFamily: 'Lobster',
              fontSize: 40,
            ),),),
        ],
      ),
    );
  }
}

