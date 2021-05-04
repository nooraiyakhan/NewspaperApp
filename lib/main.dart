import 'package:flutter/material.dart';
import 'package:newsfeed/splashscreen.dart';

void main() => runApp(MyApp());
Color mainheader = Colors.blue;
Color subheader = Colors.lightBlue;
Color subwhite= Color(0xFFf4f4f4);
Color golden = Color(0XFFCFB53B);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Newspaper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
  
        primarySwatch: subheader,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Splashscreen()
    );
  }
}
