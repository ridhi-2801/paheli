import 'package:flutter/material.dart';

class BottomNavigatorBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:6.0,right: 36.0,top: 2.0,bottom: 2.0),
      child: Card(
        elevation: 5,
        color: Colors.deepPurple,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child:Column(
          children: <Widget>[
            SizedBox(
              height: 10,
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,bottom: 2),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:3.0,left:1,right: 1),
                    child: Text("Clue :  " ,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
