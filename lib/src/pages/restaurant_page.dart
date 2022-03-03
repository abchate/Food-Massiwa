import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_massiwa/src/models/Resto_data.dart';
import 'package:food_massiwa/src/scoped_model/main_model.dart';
import 'package:food_massiwa/src/widgets/search_field.dart';
import 'package:provider/provider.dart';


class RestaurantPage extends StatefulWidget{
  final String? idResto;
  final String? nameResto;
  final String? imageResto;
  final String? AdresseResto;
  final double? ratingsResto;

  const RestaurantPage({
    this.idResto,
    this.nameResto,
    this.imageResto,
    this.AdresseResto,
    this.ratingsResto
  });

  
  @override
  State<StatefulWidget> createState() {
  return RestaurantPageState();
  }
  
}
class RestaurantPageState extends State<RestaurantPage>{
  List<Resto> _resto = resto;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Nos restaurants", style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold,)),
        // actions: [
        //   SearchField(),
        // ],
      ),
      body:Consumer<MainModel>(
      builder: (BuildContext context, MainModel model, Widget) {
      return Container(
       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchField(),
             
             
             SizedBox(height: 15,),
            Expanded(
              child: GridView.count
              (
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
            
                children: List.generate(model.restos.length, (index){
                  return GestureDetector(
                    onTap: (){},
                    child: Container(
                       padding: EdgeInsets.all(5),
                     margin: EdgeInsets.symmetric(vertical: 10,horizontal: 7),
                     width:200 ,
                     height: 200,
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
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Container(
                     //margin: EdgeInsets.only(right: 10, ),
                     width:double.infinity,
                     height:180,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage('assets/' + model.restos[index].imageResto!),
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
                   
                    Container(
                      height: 80,
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                          Expanded(
                            child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                    Icon(Icons.local_restaurant,color: Colors.black,),
                                             
                                            Padding(padding: const EdgeInsets.only(left: 7),
                                            child:Text(model.restos[index].nameResto!, style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                            )],
                               
                              ),
                          ),
                         
                         SizedBox(height: 10,),
                         Expanded(
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                    Icon(Icons.location_on,color: Colors.green,),
                                            
                                          Padding(padding: const EdgeInsets.only(left: 5),
                                           child:Text(model.restos[index].AdresseResto!,
                                           style: TextStyle(
                            color: Colors.green,
                            fontSize: 15
                                           )
                                            ) ),
                                 ],
                               
                              ),
                         ),
                         
                        
                         SizedBox(height: 10,),
                          Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                              Row(
                                
                                            children: [
                                              Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16,),
                                              Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16,),
                                              Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16,),
                                              Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16,),
                                              Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16,),
                                            ],
                                          ),
                             Text("8h-22h", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                           ],
                           ),
                        )
                       ],
                   ),
                    )
                       ],
                     ),
            
                    ),
            
                  );
                }
            
                )
              ),
            ),
          ],
        ),
        );
       } ));
  }
  
}