import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'cardClass.dart';
import 'game_screen.dart';
import 'GameScreen1.dart';
import 'GameScreen2.dart';
const List<String> levels=[
  'Easy',
  'Medium',
  'Difficult'
];
List pages=[
  GameScreen(),
  GameScreen1(),
  GameScreen2(),


];
class swiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 300,
        width: double.infinity,
        child: Swiper(
          itemWidth: 300,
          itemHeight: 200,
          curve:Curves.slowMiddle ,
          fade: 0.3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context,int index){
            return GestureDetector(
                child: CardClass(text: '${levels[index]}',
                ),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>pages[index],
                ));
              },);
          },
          viewportFraction: 0.6,
          scale: 0.5,
          itemCount: 3,
        ),
      ),
    );
  }
}

