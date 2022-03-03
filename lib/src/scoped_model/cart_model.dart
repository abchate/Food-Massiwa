import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:food_massiwa/src/models/shopping_model.dart';
import 'package:food_massiwa/src/pages/shopping_cart.dart';
import 'package:food_massiwa/src/scoped_model/main_model.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class Cart with ChangeNotifier{

  List<Shopping> shoppings = [];
  
  List<Shopping> get Shoppings{
    return shoppings;
  }

  int get Cardcount{
    return shoppings.length;
  }

  double get totalPrice {
    return shoppings.fold(0.0, (double prixTotal, Shopping nextShopping){
      return prixTotal + nextShopping.price!;
      notifyListeners();
    });
  }
  //void addToCart(String name, String imagePath, double price, double discount)=> _shoppings.add(Shopping());
  void removeFromCart(Shopping shopping){
    shoppings.remove(shopping);
    notifyListeners();
  }
  void addCard(Shopping shopping) async {   
   shoppings.add(shopping); 

   final Map<String, dynamic> cardData = {
     "name" : shopping.name,
     "imagePath" : shopping.imagePath,
     "price" : shopping.price,
     "discount" : shopping.discount
   };
   http.Response response = await http.post(Uri.parse("http://192.168.42.2/food_massiwa/api/shoppingCard/postCard.php"), body: jsonEncode(cardData));

   final Map<String, dynamic> responseData = json.decode(response.body);

   print(shopping.name);
   notifyListeners();



    
   
  }

} 
   

// class Store {

//   StreamController<List<MainModel>> _streamController = StreamController<List<MainModel>>();
//   Stream<List<MainModel>> get allFoodForSale => _streamController.stream;
// }

// class MockDatabase {
//   static final MockDatabase _instance = MockDatabase._instance;

//   factory MockDatabase(){
//     return _instance;
//   }

//   Stream<List<MainModel>> getProductSBatched() async* {
//     List<MainModel> allProducts = [];

//     var i = 0;
//     while (i < 10) {
//       await Future.delayed(Duration(seconds: 1), (){
//         allProducts.add(allProducts[i]);

//       });
//       i++;
//       yield allProducts;
//     }
//   }
// }
