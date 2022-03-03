// ignore_for_file: file_names

import 'package:food_massiwa/src/models/Resto_data.dart';

 import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;



class RestoModel extends ChangeNotifier{

  List<Resto> _resto = [];

  List<Resto> get restos {
    return List.from(_resto);
  }

  void addResto(Resto resto){
    _resto.add(resto);
  }

  Future <void> fetchResto() {
    return   http.get(Uri.parse("http://192.168.42.2/food_massiwa/api/restaurant/getResto.php"))
    .then((http.Response response){
     // print("Fetching_data: ${response.body}");
     final List fetchingData = jsonDecode(response.body);
     final List<Resto> fetchedRestoItems = [];
     //print(fetchingData);
      fetchingData.forEach((data) {
        Resto resto = Resto(
          idResto: data["idResto"],
          nameResto: data["nameResto"],
          imageResto: data["imageResto"],
          AdresseResto: data["adresseResto"],

        );
        fetchedRestoItems.add(resto);
        
      });
      _resto = fetchedRestoItems;
      print(_resto);

    }
    );
      
    }
  
    }

 