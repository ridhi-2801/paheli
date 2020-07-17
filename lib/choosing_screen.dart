import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'swiper.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ChoosingScreen extends StatefulWidget {
  @override
  _ChoosingScreenState createState() => _ChoosingScreenState();
}

class _ChoosingScreenState extends State<ChoosingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton:  FloatingActionButton(onPressed: (){
        showModalBottomSheet(
         // barrierColor: Colors.lightGreen,
          isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (context) => Container(
              height: 250,

              child: new Container(
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(20.0),
                          topRight: const Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new Column(
                      children: <Widget>[
                        Text("Starting the Game",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(top:16.0,bottom: 16),
                          child: Text("This game consists of 3 levels:",style: TextStyle(
                            color: Colors.black,
                          ),),
                        ),
                        Text("1) Easy",style: TextStyle(
                          color: Colors.black,
                        ),),
                        Text("       2) Medium",style: TextStyle(
                          color: Colors.black,
                        ),),
                        Text("       3) Difficult",style: TextStyle(
                          color: Colors.black,
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(top:16.0),
                          child: Text("Play Each Question And after answering All a score card will be displayed at the end telling your performance",style: TextStyle(
                            color: Colors.black,
                          ),),
                        ),
                      ],
                    ),
                  )),
            ));
      },
        backgroundColor: Colors.pink,child: Icon(Icons.directions_run,color: Colors.white,size: 45,),
      ),
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100.0),bottomRight: Radius.circular(100.0),),),
        leading: DrawerIcon(),//Icon not added directly because for scaffold drawer to open, it needs new BuildContext.
        actions: <Widget>[
          Icon(Octicons.globe,size: 30.0,)
        ],
        backgroundColor: Colors.lightGreen,
        title: Center(child: Text('Project paheli',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),)),
        bottom: PreferredSize(preferredSize: Size.fromHeight(110.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Project Paheli',style: TextStyle(fontSize: 30.0,color: Colors.white),),
                  Icon(Icons.live_tv,color: Colors.white,size: 30.0,),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.grey,
        child: Container(height: 50,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
              child: Image(
                image: AssetImage("icon/a.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('About Us'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('Choose your Mode',style: TextStyle(fontSize: 40.0),),
              swiper(),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(icon : Icon(FrinoIcons.f_sort,color: Colors.white,size: 30.0,),
      onPressed: (){
        Scaffold.of(context).openDrawer();
      },
    );
  }
}