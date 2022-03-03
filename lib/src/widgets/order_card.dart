
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_massiwa/src/scoped_model/main_model.dart';
import 'package:provider/provider.dart';

class OrderCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Consumer<MainModel>(
      builder: (BuildContext context, MainModel model, Widget? child) {
      return  model.shoppings.length == 0
    ? Center(child: Text("rien n'a été choisi", style: TextStyle(fontSize: 20),))
    : ListView.builder(
      shrinkWrap: true,
      itemCount: model.shoppings.length,
      itemBuilder: (BuildContext context, int index){
        return Card(
    // child: Padding(
       //padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
       child: Row(
         children: [
           Container(
             height: 100,
             width: 45,
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
                 image: AssetImage('assets/' + model.shoppings[index].imagePath!),
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
              //  SizedBox(height: 9,),
              //  Container(
              //    height: 25,
              //    width: 120,
              //    child: ListView(
              //     scrollDirection: Axis.horizontal,
              //      children: [
                  
              //      Container(
              //        margin: EdgeInsets.only(right: 10),
              //        child: Row(
              //          children: [
              //            Text("Poulet", style: TextStyle(fontSize: 18, color: Colors.grey),),
              //            SizedBox(width: 10,),
              //            InkWell(
              //              onTap: (){},
              //              child: Text("x", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),))
              //          ],
                       
              //        ),
              //      ),
                   
                  
              //    ],)
              //    ,
              //      ) 
             ],
           ),
           //Spacer(),
           GestureDetector(
             onTap: (){ model.removeFromCart(model.shoppings[index]);},
             child: Icon(Icons.delete, color: Colors.grey,size: 40,),
           )
         ],

       ),
     //),
   );
  }); });
  }
}