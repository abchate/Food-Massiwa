import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget{

  final String? categoryName;
  final String? imagePath;
  const FoodCard({this.categoryName, this.imagePath});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.only(top: 20, right: 15, ),
      child: Card(
        color: Colors.red.withOpacity(0.5),
        child:  Padding(
          padding:  EdgeInsets.only(top: 0),
        
        
      
        child: Column(
          

          children: <Widget> [
             Image(
              image:  AssetImage(imagePath!),
              height: 75,
              width: 110,
            ),
           SizedBox(height: 2,),
            Container(
                child:  Text(categoryName!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              


            )
          ],

        ),
  ),
  ),
    );
  }
  
}