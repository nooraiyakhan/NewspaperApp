import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsfeed/homepage.dart';
class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState(){
    super.initState();
    loadTimer();
  }
  Future<Timer>loadTimer()async{
    return new Timer(Duration(seconds: 3), onDoneLoading);
  }
  onDoneLoading()async{
    Navigator.pop(context);
    Navigator.push(context, 
    MaterialPageRoute(builder: (context)=>Homepage()));
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.redAccent),
                borderRadius: BorderRadius.circular(3)
              ),
              child:
             
               Text("NewsFeed",style:TextStyle(color: Colors.redAccent,fontSize: 25,fontWeight: FontWeight.w300),),
               padding: EdgeInsets.all(10),

            ),
          ],
        ),
      )),
      
    );
  }
}