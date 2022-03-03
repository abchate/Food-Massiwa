
 import 'package:flutter/cupertino.dart';
import 'package:food_massiwa/src/scoped_model/Resto_model.dart';
import 'package:food_massiwa/src/scoped_model/cart_model.dart';
import 'package:food_massiwa/src/scoped_model/category_model.dart';
import 'package:food_massiwa/src/scoped_model/food_model.dart';
import 'package:scoped_model/scoped_model.dart';



class MainModel extends ChangeNotifier with FoodModel, RestoModel, Cart, CatergoModel {

 }