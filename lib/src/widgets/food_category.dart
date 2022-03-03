import 'package:flutter/material.dart';
import 'package:food_massiwa/src/scoped_model/main_model.dart';
import 'package:provider/provider.dart';
import '../models/category_model_food.dart';
import 'food_card.dart';
class FoodCategory extends StatelessWidget{

//final List<CategoryFood> _categories = categories;
  @override
  Widget build(BuildContext context) {
    return Consumer<MainModel>(
      builder: (BuildContext context, MainModel model, Widget? child) {
      return Container(
      
   height: 150,
   //width: 20,
    child:ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: model.categ.length,
    itemBuilder: (BuildContext context, int index){
      return FoodCard(
        categoryName: model.categ[index].categoryName,
        imagePath: 'assets' + model.categ[index].imagePath!,
      );
    }

    ));
  });}
  
}