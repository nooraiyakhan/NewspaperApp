import 'package:flutter/material.dart';
class Searchbar extends StatefulWidget {
  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.redAccent,
        title: Container(
          height: 38,
          padding: EdgeInsets.only(left: 5),
         // margin: EdgeInsets.only(top: 5,bottom: 5),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(5,),
            
          ),
          child: Row(
            children: [
              Icon(Icons.search,color: Colors.white,size: 17,),
              SizedBox(width:3,),
              Flexible(child: 
              TextField(
                onChanged: (value){
                  setState(() {
                    
                  }); },
                  autofocus: true,
             
                    decoration: InputDecoration(
                      hintText: "Search topics and articles",
                      hintStyle: TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      
                      ),
                      border: InputBorder.none
                    ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}