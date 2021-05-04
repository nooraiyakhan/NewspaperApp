import 'package:flutter/material.dart';
import 'package:newsfeed/homepage.dart';
import 'package:share/share.dart';
class Termspage extends StatefulWidget {
  @override
  _TermspageState createState() => _TermspageState();
}

class _TermspageState extends State<Termspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.redAccent,
        title: Text("Terms and condition",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
          
        ),
      ),
      body: 
      
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
    
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            "Terms of Use",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          
        ),
        Container(
          padding: EdgeInsets.only(left:25),
          child: Text("Updated On:April 18,2021",style: TextStyle(
          color: Colors.black54
          ),),
        ),
        SizedBox(height: 10,),
         Container(
           width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left:25),
          child: 
        
              Text("BY using this app you're fully agree to our privacy policy.If you've any question or suggestions ,Please feel free to write us to newsfeed@gmail.com ",style: TextStyle(
              color: Colors.black54
              ),),
              
          ),
      
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
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.home,color: Colors.grey,size: 20,),
                ),
                SizedBox(width: 18,),
                Container(
                  child: Text("Home",style: TextStyle(color: Colors.grey,fontSize: 18),),
                )
              ],
            ),
            
          ),
         SizedBox(height: 15,),
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
                  child: Icon(Icons.security,color: Colors.redAccent,size: 20,),
                  ),
                  SizedBox(width: 18,),
                  Container(
                    child: Text("Terms and condition",style: TextStyle(color: Colors.redAccent,fontSize: 18),),
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
    );
  }
}