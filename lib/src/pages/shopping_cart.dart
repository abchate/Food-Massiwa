import 'package:flutter/material.dart';
import 'package:food_massiwa/src/models/food_data.dart';
import 'package:food_massiwa/src/pages/login_page.dart';
import 'package:food_massiwa/src/scoped_model/main_model.dart';
import 'package:food_massiwa/src/widgets/order_card.dart';
import 'package:provider/provider.dart';

class ShoppingCart extends StatefulWidget{
final String? id;
final String? name;
final String? imagePath;
//final String? description;
final String? category;
final double? price;
final double? discount;
final double? ratings;

const ShoppingCart({
  this.id,
  this.name,
  this.imagePath,
  //this.description,
  this.category,
  this.discount,
  this.price,
  this.ratings

});

@override
_ShoppingCartState createState() => _ShoppingCartState();

}

class _ShoppingCartState extends State<ShoppingCart>{
  @override
  Widget build(BuildContext context) {
    return Consumer<MainModel>(
      builder: (BuildContext context, MainModel model, Widget? child) {
      return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Carte de commande  ", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0.8,
    ),
    body: model.shoppings.length == 0
    ? Center(child: Text("rien n'a été choisi", style: TextStyle(fontSize: 20),))
     :ListView.builder(
       shrinkWrap: true,
      itemCount:model.shoppings.length,
      itemBuilder: (BuildContext context, int index){
        return Card(
          
           child:  Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
             child: Row(
             children: [
             Container(
               height: 100,
               width: 50,
               decoration: BoxDecoration(
                 border: Border.all(width: 2.0, color: Colors.grey),
                 borderRadius: BorderRadius.circular(10)
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.keyboard_arrow_up)),
                    Text("0", style: TextStyle(fontSize: 18),),
                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.keyboard_arrow_down))
                  ],
                ),
           
             ),
             SizedBox(width: 20,),
             Container(
               height: 70,
               width: 70,
               decoration:  BoxDecoration(
                 image:  DecorationImage(
                   image: AssetImage( model.shoppings[index].imagePath!),
                   fit: BoxFit.cover
                 ),
                 borderRadius: BorderRadius.circular(35),
                 boxShadow: const [
                   BoxShadow(
                     color: Colors.black,
                     blurRadius: 5,
                     offset: Offset(0,5)
                      )
                 ]
               ),
             ),
             SizedBox(width: 10,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                  Text(model.shoppings[index].name!, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 SizedBox(height: 7,),
                  Text(model.shoppings[index].price!.toString() + 'KMF', style: TextStyle(color: Colors.red, fontSize: 18),),
                 SizedBox(height: 9,),
                 Container(
                   height: 25,
                   width: 120,
                   child: ListView(
                    scrollDirection: Axis.horizontal,
                     children: [
                    
                     Container(
                       margin: EdgeInsets.only(right: 10),
                       child: Row(
                         children: [
                           Text("Poulet", style: TextStyle(fontSize: 18, color: Colors.grey),),
                           SizedBox(width: 10,),
                           InkWell(
                             onTap: (){},
                             child: Text("x", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),))
                         ],
                         
                       ),
                     ),
                     
                    
                   ],)
                   ,
                     ) 
               ],
             ),
             Spacer(),
             GestureDetector(
               onTap: (){ model.removeFromCart(model.shoppings[index]);},
               child: Icon(Icons.delete, color: Colors.grey,size: 40,),
             )
                    ],
           
                  ),
           ),
        //  child: ListTile(
        //    title: Text(model.shoppings[index].name!),
        //    subtitle: Text(model.shoppings[index].price.toString()),
        //    trailing: IconButton(
        //      icon: Icon(Icons.delete), 
        //      onPressed: (){ model.removeFromCart(model.shoppings[index]);
             
        //      },
        //    ),
        //  )
        );
      }
    ),
    bottomNavigationBar: _buildTotalContainer(),
    );
   } );}

  
  Widget _buildTotalContainer(){
       return Consumer<MainModel>(
      builder: (BuildContext context, MainModel model, Widget? child) {
      return
          Container(
           height: 120,
           margin: EdgeInsets.only(top: 20),
           padding: EdgeInsets.symmetric(horizontal: 10),
           child: Column(
             children:  [
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("Prix Total :", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey),),
                  Text( model.totalPrice.toString() + "KMF",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.green),
       
        
                  )],
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => LoginPage()));
                },
                child: Container(
                  
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
              
                     ),
                     child: Center(
                       child: Text("Passer au Payement",
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize:18
                       ),
                       ),
                     ),
                ),
              )
              ],
           ),
         );
      });

  }
}