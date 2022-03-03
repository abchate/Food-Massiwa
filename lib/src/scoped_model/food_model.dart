import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:food_massiwa/src/models/Resto_data.dart';
import 'package:food_massiwa/src/models/food_data.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class FoodModel extends ChangeNotifier {
   List<Food> _foods = [];
   double _totalPrice = 0.0;


  
  

  List<Food> get foods{
    return _foods;
  }
  

  void addFood(Food food) {   
    _foods.add(food);
    _totalPrice += food.price!;
    notifyListeners();
  }
  void remove(Food food) {
    _foods.remove(food);
    _totalPrice -= food.price!;
    notifyListeners();
  }
  int get count {
    return _foods.length;
  }
  double get totalPrice {
    return _totalPrice;
  }
 
  
  void fetchFood(){
    http
    .get(Uri.parse("http://192.168.42.2/food_massiwa/api/food/getFood.php"))
    .then((http.Response response){
      //print("Feching data: ${response.body}");
      final List fetchedData = json.decode(response.body);
      final List<Food> fetchedFoodItems = [];

      fetchedData.forEach((data) {
        Food food = Food(
          id: data["id"],
          name: data["name"],
          imagePath: data["imagePath"],
          category: data["category_id"],
          price: double.parse(data["price"]),
          discount: double.parse(data["discount"]),
          //ratings: double.parse(data["ratings"])
        );
        fetchedFoodItems.add(food);

        
      });
      _foods = fetchedFoodItems;
      print(_foods);
      

    });
  }
   
  

}