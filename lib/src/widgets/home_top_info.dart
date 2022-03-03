import 'package:flutter/material.dart';

class HometopInfo extends StatelessWidget{
  final textStyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,color: Colors.black);
  
  @override
  Widget build(BuildContext context){
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Que voulez ", style: textStyle,),
              Text("vous manger?", style: textStyle,)
            ],
          ),
          
          
            ],  
      
    );
  }
  
}