import 'package:flutter/material.dart';
import 'package:food_massiwa/src/homesreen.dart';
import 'package:food_massiwa/src/pages/login_page.dart';
import 'package:food_massiwa/src/pages/restaurant_page.dart';
import 'package:food_massiwa/src/scoped_model/Resto_model.dart';
import 'package:food_massiwa/src/scoped_model/cart_model.dart';
import 'package:food_massiwa/src/scoped_model/food_model.dart';
import 'package:food_massiwa/src/scoped_model/main_model.dart';
import 'package:food_massiwa/src/screens/main_sreen.dart';
import 'package:provider/provider.dart';


// ignore: must_be_immutable
class App extends StatelessWidget{
  RestoModel restoModel = RestoModel();
  final MainModel mainModel = MainModel();
  
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => mainModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       title: "Food Massiwa", 
       theme: ThemeData(
         primaryColor: Colors.red
       ),
       home: MainSreen(model: mainModel,),
      
       
       
      
       
      ),
    );
  }
  
}