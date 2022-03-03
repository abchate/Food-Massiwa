


import 'package:flutter/material.dart';
import 'package:food_massiwa/src/models/Resto_data.dart';
import 'package:food_massiwa/src/models/food_data.dart';
import 'package:food_massiwa/src/pages/food_page.dart';
import 'package:food_massiwa/src/pages/restaurant_page.dart';
import 'package:food_massiwa/src/scoped_model/cart_model.dart';
import 'package:food_massiwa/src/scoped_model/food_model.dart';
import 'package:food_massiwa/src/scoped_model/main_model.dart';
import 'package:food_massiwa/src/widgets/bought_food.dart';
import 'package:food_massiwa/src/widgets/food_card.dart';
import 'package:food_massiwa/src/widgets/food_category.dart';
import 'package:food_massiwa/src/widgets/home_top_info.dart';
import 'package:food_massiwa/src/widgets/resto_card.dart';
import 'package:provider/provider.dart';

import '../widgets/search_field.dart';

class HomePage extends StatefulWidget{
  // FoodModel? foodModel;
  // HomePage( this.foodModel);
@override
_HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
  List<Food> _foods = foods;
  List<Resto> _resto = resto;
  @override
  Widget build(BuildContext context) {
   return Consumer<MainModel>(
      builder: (BuildContext context, MainModel model, Widget? child) {
      return 
      Scaffold(
       backgroundColor: Colors.white,
       body:  
         SingleChildScrollView(
           
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          
          child:Column(
           children: [
             HometopInfo(),
             SizedBox(height: 5,),
             FoodCategory(),
             SizedBox(height: 20,),
             SearchField(),
             SizedBox(height: 20,),
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
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(
                           builder: (BuildContext context) => FoodPage()));
                  },
               child: const Text("VOIR TOUT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.red
                ),
                ))
              ],
              ),
             SizedBox(height: 5,),
             //_buildFoodItems(),
             Container(
               height: 200,
               //width: 220,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: model.foods.length,
          itemBuilder: (BuildContext context, int index){
        return BoughtFoods(
          // onFoodClick: (){
          //  model.shoppings.add(model.foods[index]);
          // }, 
      
          id: model.foods[index].id ,
          name: model.foods[index].name,
          imagePath: 'assets/'+  model.foods[index].imagePath!,
          category: model.foods[index].category,
          price: model.foods[index].price,
          discount: model.foods[index].discount,
          ratings: model.foods[index].ratings,
         
        );
          },
          
       
              ) ),
      
             SizedBox(height:15,),
              
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
               const Text('Nos Restaurants',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown
                ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                           builder: (BuildContext context) =>RestaurantPage(
               
            
            
                           )));
                  },
               child: const Text("VOIR TOUT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.red
                ),
                ))
              ],
              ),
            
             SizedBox(height: 10,),
             //_buildRestoItems(),
             Container(
      
    height: 177,
  // width: 20,
    child:ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: model.restos.length,
    itemBuilder: (BuildContext context, int index){
      return RestoCard(
        idResto: model.restos[index].idResto,
        nameResto:  model.restos[index].nameResto,
        imageResto: 'assets/'+  model.restos[index].imageResto!,
        AdresseResto: model.restos[index].AdresseResto,
        

      );
    
     },
      )
    )
            
            
             ],
            
         ),
            
             ),
   );} );
    
      
  
 } } 
 
  //   Widget _buildFoodItems(){
  //   return Consumer<MainModel>(
  //     builder: (BuildContext context, MainModel model, Widget? child) {
  //     return Container(
  //       child: ListView.builder(
  //         scrollDirection: Axis.horizontal,
  //         itemCount: model.foods.length,
  //         itemBuilder: (BuildContext context, int index){
  //       return BoughtFoods(
  //         id: model.foods[index].id ,
  //         name: model.foods[index].name,
  //         imagePath: 'assets/'+  model.foods[index].imagePath!,
  //         category: model.foods[index].category,
  //         price: model.foods[index].price,
  //         discount: model.foods[index].discount,
  //         ratings: model.foods[index].ratings,
         
  //       );
  //         },
          
       
  //         ),
  //     );

    
      
     
  //   } 
  //      );
       
  //       }
        
          
    
  // }

  // Widget _buildRestoItems(){
  //   return Consumer<MainModel>(
  //     builder: (BuildContext context, MainModel model, Widget? child) {
  //     return Container(
      
  //   height: 177,
  // // width: 20,
  //   child:ListView.builder(
  //   scrollDirection: Axis.horizontal,
  //   itemCount: model.restos.length,
  //   itemBuilder: (BuildContext context, int index){
  //     return RestoCard(
  //       idResto: model.restos[index].idResto,
  //       nameResto:  model.restos[index].nameResto,
  //       imageResto: 'assets/'+  model.restos[index].imageResto!,
  //       AdresseResto: model.restos[index].AdresseResto,
        

  //     );
    
  //    },
  //     )
  //   );
  //     }
   
  //   );