
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_massiwa/src/models/shopping_model.dart';
import 'package:food_massiwa/src/scoped_model/main_model.dart';
import 'package:food_massiwa/src/widgets/search_field.dart';
import 'package:food_massiwa/src/widgets/small_button.dart';
import 'package:provider/provider.dart';



class FoodPage extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
  return FoodPageState();
  }
  
}
class FoodPageState extends State<FoodPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Tous nos plats", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold,
             )
             ),),
      body:Consumer<MainModel>(
      builder: (BuildContext context, MainModel model, Widget) {
      return Container(
          //height: 600,
          //width: 450,
       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SearchField(),
           
           
           SizedBox(height: 15,),
          Expanded(
        
       child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: model.foods.length,
        itemBuilder: (BuildContext context, int index){
      return Container(
        height: 150,
        width: 220,
       // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 60),
        
         child: 
             Container(
              padding: EdgeInsets.all(5),
               margin: EdgeInsets.symmetric(vertical: 10),
               width: MediaQuery.of(context).size.width,
               height: 120,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 5,
                              offset: Offset(0, 1)
                               )
                          ]
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                     margin: EdgeInsets.only(right: 20),
                     width: 120,
                     height: 120,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage('assets/' + model.foods[index].imagePath!),
                         fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 5,
                              offset: Offset(0, 1)
                               )
                          ]
                     ),
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(model.foods[index].name!, style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                       SizedBox(height: 5,),
                       Container(
                         width: 150,
                         child: Text("Un plat comorienne fait avec riz bien chaud et du poulet"),
                       ),
                       
                      
                       //SizedBox(height: 10,),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: 190,
                        
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(model.foods[index].price!.toString() + " KMF", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.red),),
                           GestureDetector(
                             onTap: (){
                          
                            List<Shopping> shoppingscard = [];
                           
                           final Shopping cart = Shopping(
                              name: model.foods[index].name,
                              imagePath:'assets/'+ model.foods[index].imagePath!,
                              
                              price: model.foods[index].price,
                              discount: model.foods[index].discount,
                            
                            );
                            model.addCard(cart);
                            
                         
                        },
                             child: SmallButton(btnText: "acheter",))
                         ],
                       ),
                      )
                     ],
                   )
                 ],
               ),
      ));
      
      }))]),
         );
      
       }));
        
  }
  
}