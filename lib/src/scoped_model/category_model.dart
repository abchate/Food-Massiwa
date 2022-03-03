 import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;
import 'package:food_massiwa/src/models/category_model_food.dart';



class CatergoModel extends ChangeNotifier{

   List<CategoryFood> _cat = [];

  List<CategoryFood> get categ {
    return List.from(_cat);
  }

  void addCat(CategoryFood cat){
    _cat.add(cat);
  }

  Future <void> fetchCategory() {
    return   http.get(Uri.parse("http://192.168.42.2/food_massiwa/api/category/getCategory.php"))
    .then((http.Response response){
     // print("Fetching_data: ${response.body}");
     final List fetchingData = jsonDecode(response.body);
     final List<CategoryFood> fetchedCatItems = [];
     //print(fetchingData);
      fetchingData.forEach((data) {
        CategoryFood cat = CategoryFood(

          idCat: data["idCat"],
          categoryName: data["namecat"],
          imagePath: data["imgCat"],
         

        );
        fetchedCatItems.add(cat);
        
      });
      _cat = fetchedCatItems;
      print(_cat);

    }
    );
      
    }
  
    }