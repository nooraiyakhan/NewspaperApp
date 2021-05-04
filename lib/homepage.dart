import 'package:flutter/material.dart';
import 'package:newsfeed/searchbar.dart';
import 'package:newsfeed/termspage.dart';
import 'dart:convert';
import 'package:share/share.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        iconTheme: IconThemeData(color: Colors.white),
   
        title:   Container(
         margin: EdgeInsets.only(left: 60),
        //  width: 100,
          decoration: BoxDecoration(
                    border: Border.all(width: 0.5,color: Colors.white),
                borderRadius: BorderRadius.circular(3)
          ),
          padding: EdgeInsets.all(5),
          child: Text("NewsFeed",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)),
          actions: [
      
         Container(
           width: 40,
           margin: EdgeInsets.only(right: 15,top: 5),
           child:
            GestureDetector
            (onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Searchbar()));
            },
              
              child: Icon(Icons.search,color: Colors.white,size: 25,)),
           )
           
           // Icon(Icons.search,color: Colors.white,size: 20,))
            
              ],

      ),
      drawer: Drawer(
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Container(
                      //height: 50,
       margin: EdgeInsets.only(left: 10,top: 80),
        //  width: 100,
          decoration: BoxDecoration(
            
                        border: Border.all(width: 0.5,color: Colors.redAccent),
                    borderRadius: BorderRadius.circular(3)
          ),
          padding: EdgeInsets.all(5),
          child: Text("NewsFeed",style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.w400)),  ),
          SizedBox(height: 15,),
          Divider(),
        
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.home,color: Colors.redAccent,size: 20,),
                ),
                SizedBox(width: 18,),
                Container(
                  child: Text("Home",style: TextStyle(color: Colors.redAccent,fontSize: 18),),
                )
              ],
            ),
            
          ),
         SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                setState(() {
                  
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Termspage()));
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.security,color: Colors.grey,size: 20,),
                  ),
                  SizedBox(width: 18,),
                  Container(
                    child: Text("Terms and condition",style: TextStyle(color: Colors.grey,fontSize: 18),),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
               GestureDetector(
                 onTap: (){
                   Share.share("Share text");
                 },
                 child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.share,color: Colors.grey,size: 20,),
                  ),
                  SizedBox(width: 18,),
                  Container(
                    child: Text("Share",style: TextStyle(color: Colors.grey,fontSize: 18),),
                  )
              ],
            ),
               ),
                ],
              ),
          
              ),  ],
        )
      ),
      body: DefaultTabController(
        length: 8,
         child: Container(
           child: Column(
             children: [
               Container(
                 margin: EdgeInsets.only(top: 10),
                 child: new Material(
                   child:
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                       width: MediaQuery.of(context).size.width,
                       decoration: BoxDecoration(
                         color:Colors.white 
                       ),
                       child: new TabBar(
                         isScrollable: true,
                         tabs: 
                       [
                         Tab(text: "Bangla",),
                         Tab(text: "English",),
                         Tab(text: "Online",),
                         Tab(text: "International",),
                         Tab(text: "Business",),
                         Tab(text: "Sports",),
                         Tab(text: "Magazine",),
                         Tab(text: "Local",),
                       ],
                       labelPadding: EdgeInsets.only(left: 10,right: 15),
                       indicatorColor: Colors.redAccent,
                       unselectedLabelColor: Color(0xff354D5B),
                       unselectedLabelStyle: TextStyle(
                         fontWeight: FontWeight.w500,fontSize: 14
                       ),
                       indicator: UnderlineTabIndicator(
                         borderSide: BorderSide(
                           width: 1.5,color: Colors.redAccent,
                         ),
                         insets: EdgeInsets.symmetric(horizontal: 25.0)
                       ),
                       indicatorPadding: EdgeInsets.only(left: 30,right: 30),
                       labelColor: Colors.redAccent,
                       ),),
                    ),
                 ),
               ),
               Expanded(child: 
               TabBarView(children: <Widget>[
                 SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                     
                     children: [
                  
                       Container(
                         color: Colors.grey,
                        child: Image.asset("assets/bngnews1.jpg"),
                       ),
                       Container(
                         color: Colors.grey,
                        child: Image.asset("assets/bngnews2.jpg"),
                       ),
                       Container(
                         color: Colors.grey,
                        child: Image.asset("assets/bngnews3.jpg"),
                       ),
                       Container(
                         color: Colors.grey,
                        child: Image.asset("assets/bngnews4.jpg"),
                       ),
                     ],
                   ),
                 ),
                   SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                     children: [
                              Container(
                         color: Colors.grey,
                         child: Image.asset("assets/engnews1.jpg"),
                       ),
                         Container(
                         color: Colors.grey,
                         child: Image.asset("assets/engnews2.jpg"),
                       ),
                         Container(
                         color: Colors.grey,
                         child: Image.asset("assets/engnews3.jpg"),
                       ),
                         Container(
                         color: Colors.grey,
                         child: Image.asset("assets/engnews4.jpg"),
                       )

                     ],
                   ),
                 ),
                   SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                     children: [
                         Container(
                         color: Colors.grey,
                         child: Image.asset("assets/onlinenews1.jpg"),
                       ),
                          Container(
                         color: Colors.grey,
                         child: Image.asset("assets/onlinenews2.jpg"),
                       ),
                        Container(
                         color: Colors.grey,
                         child: Image.asset("assets/onlinenews3.jpg"),
                       ),
                        Container(
                         color: Colors.grey,
                         child: Image.asset("assets/onlinenews4.jpg"),
                       ),
                     ],
                   ),
                 ),
                   SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                     children: [
                        Container(
                         color: Colors.grey,
                         child: Image.asset("assets/international.jpg"),
                       ),
                          Container(
                         color: Colors.grey,
                         child: Image.asset("assets/international1.jpg"),
                       ),
                        Container(
                         color: Colors.grey,
                         child: Image.asset("assets/international2.jpg"),
                       ),
                        Container(
                         color: Colors.grey,
                         child: Image.asset("assets/international4.jpg"),
                       ),
                     ],
                   ),
                 ),
                   SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                     children: [
                                  Container(
                         color: Colors.grey,
                         child: Image.asset("assets/business1.jpg"),
                       ),
                          Container(
                         color: Colors.grey,
                         child: Image.asset("assets/business2.jpg"),
                       ),
                        Container(
                         color: Colors.grey,
                         child: Image.asset("assets/business3.jpg"),
                       ),
                       
                     ],
                   ),
                 ),
                   SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                     children: [
                          Container(
                         color: Colors.grey,
                         child: Image.asset("assets/sports.jpg"),
                       ),
                         Container(
                         color: Colors.grey,
                         child: Image.asset("assets/sports1.jpg"),
                       ),
                     ],
                   ),
                 ),
                   SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                     children: [
                           Container(
                         color: Colors.grey,
                        child: Image.asset("assets/magazine.jpg"),
                       ),
                       Container(
                         color: Colors.grey,
                        child: Image.asset("assets/magazine1.jpg"),
                       ),
                       Container(
                         color: Colors.grey,
                        child: Image.asset("assets/magazine2.jpg"),
                       ),
                     ],
                   ),
                 ),
                   SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                     children: [
                         Container(
                         color: Colors.grey,
                        child: Image.asset("assets/local.jpg"),
                       ),
                       Container(
                         color: Colors.grey,
                        child: Image.asset("assets/local1.jpg"),
                       ),
                       Container(
                         color: Colors.grey,
                        child: Image.asset("assets/local2.jpg"),
                       ),
                     ],
                   ),
                 ),
                 
               ]))
             ],
           ),
         )),
    );
  }
}