import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget{
  final String? btnText;
 const SmallButton({this.btnText});
  @override
  Widget build(BuildContext context) { 
    return Container(
                         height: 25,
                         width: 80,
                         decoration: BoxDecoration(
                           
                           border: Border.all(
                             color: Colors.green,
                           ),
                           borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                         BoxShadow(
                           blurRadius: 5.0,
                           offset: Offset(2,4),
                           color: Colors.transparent
                         )]
                         ),
                         child:  Center(child: 
                         Text("$btnText", 
                         style: TextStyle(color: Colors.green,fontSize: 16),)
      
                         ),
                       );
  }
  
}