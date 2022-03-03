

import 'package:flutter/material.dart';
import 'package:food_massiwa/src/models/Resto_data.dart';
import 'package:food_massiwa/src/models/food_data.dart';
import 'package:food_massiwa/src/widgets/bought_food.dart';
import 'package:food_massiwa/src/widgets/food_card.dart';
import 'package:food_massiwa/src/widgets/food_category.dart';
import 'package:food_massiwa/src/widgets/home_top_info.dart';
import 'package:food_massiwa/src/widgets/resto_card.dart';
import 'widgets/search_field.dart';

class HomeSreen extends StatefulWidget{
@override
_HomeSreenState createState() => _HomeSreenState();

}

class _HomeSreenState extends State<HomeSreen>{
  List<Food> _foods = foods;
  List<Resto> _resto = resto;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      
      child:Column(
       children: [
         HometopInfo(),
         SizedBox(height: 5,),
         FoodCategory(),
         SizedBox(height: 20,),
         SearchField(),
         SizedBox(height: 20,),
          Container(
            child:
           Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:  [
            const Text('Plats Populaires',
             style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.brown
             ),
             ),
             GestureDetector(
               onTap: (){},
            child: const Text("Voir Plus",
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 18,
               color: Colors.red
             ),
             ))
           ],
           )),
         SizedBox(height: 5,),
         _buildFoodItems(),
         SizedBox(height:20),
         Container(
           margin: EdgeInsets.only(left: 5),
           alignment: Alignment.centerLeft,
         child:const Text('Les restaurants les plus proche',
         textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold,
               color: Colors.brown
               
             ),
         )),

         SizedBox(height: 10,),
         _buildRestoItems(),


         ],

     ),

    ) );
  }
  Widget _buildFoodItems(){
    return Container(
      
    height: 150,
   // width: 20,
    child:ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: _foods.length,
    itemBuilder: (BuildContext context, int index){
      return BoughtFoods(
        id: _foods[index].id ,
        name: _foods[index].name,
        imagePath: _foods[index].imagePath,
        category: _foods[index].category,
        price: _foods[index].price,
        discount: _foods[index].discount,
        ratings: _foods[index].ratings,
       
      );
    },
    

    )
    );
  }
  Widget _buildRestoItems(){
    return Container(
      
    height: 177,
  // width: 20,
    child:ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: _resto.length,
    itemBuilder: (BuildContext context, int index){
      return RestoCard(
        idResto: _resto[index].idResto,
        nameResto: _resto[index].nameResto,
        imageResto: _resto[index].imageResto,
        AdresseResto: _resto[index].AdresseResto,
        ratingsResto: _resto[index].ratingsResto,

      );
    
     },
      )
    );
   
    }


  
}