import 'package:flutter/material.dart';
import 'package:food_massiwa/src/models/food_data.dart';
import 'package:food_massiwa/src/models/shopping_model.dart';
import 'package:food_massiwa/src/pages/order_page.dart';
import 'package:food_massiwa/src/pages/shopping_cart.dart';
import 'package:food_massiwa/src/scoped_model/cart_model.dart';
import 'package:food_massiwa/src/scoped_model/main_model.dart';
import 'package:food_massiwa/src/widgets/small_button.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';

class BoughtFoods extends StatefulWidget{
  String? id;
 String? name;
 String? imagePath;
 String? category;
 double? price;
 double? discount;
 double? ratings;
//final Function? onFoodClick;

 BoughtFoods({
  this.id,
  this.name,
  this.imagePath,
  this.category,
  this.discount,
  this.price,
  this.ratings,
  //this.onFoodClick,

});
  @override
  State<StatefulWidget> createState() {
    return _BoughtFoodState();
  }

}

class _BoughtFoodState extends State<BoughtFoods>{
  List <Shopping> _card = [];
  GlobalKey _key = GlobalKey();
  
  bool _Visibility = true;
  @override
  Widget build(BuildContext context) {
    initialData: [];
    return Consumer<MainModel>(
      builder: (BuildContext context, MainModel model, Widget? child) {
      return 
    Container(
      key: _key,
      margin: EdgeInsets.all(10),
      height: 200,
      width: 250,
      child: Stack(
        children: [
          Positioned.fill(
    
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
            child: Image.asset(widget.imagePath!, fit: BoxFit.cover,),
            
          )),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              height: 60,
              //width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.black, Colors.black12
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                )
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: IconButton(
          onPressed: (){
            setState(() {
              _Visibility = !_Visibility;
            });
    
          },
          icon: _Visibility? Icon(Icons.favorite_outline_outlined, color: Colors.redAccent,size: 30,) : Icon(Icons.favorite, color: Colors.redAccent,size: 35,),
        )
          ),
          Positioned(
            left: 5,
            bottom: 10,
            //right: 77,
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Text(widget.name!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                   Row(
                    children: [
                      Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16,),
                      Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16,),
                      Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16,),
                      Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16,),
                      Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16,),
                    ],
                  )
                ],),
              SizedBox(width: 70,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:  [
                     Text(widget.price!.toString() + "  KMF",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                    ),
                  
                    ),
                    SizedBox(height: 5,),
                      GestureDetector(
                        
                        onTap: (){
                          
                            List<Shopping> shoppingscard = [];
                           
                           final Shopping cart = Shopping(
                              name: widget.name,
                              imagePath: widget.imagePath,
                              
                              price: widget.price,
                              discount: widget.discount,
                            
                            );
                            model.addCard(cart);
                            
                         
                        },
                        child:  SmallButton(btnText: "acheter",)
                      ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  });}
  
}