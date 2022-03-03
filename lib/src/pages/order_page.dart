import 'package:flutter/material.dart';
import 'package:food_massiwa/src/pages/login_page.dart';
import 'package:food_massiwa/src/widgets/order_card.dart';

class OrderPage extends StatefulWidget{
 final String? id;
final String? name;
final String? imagePath;
final String? description;
final String? category;
final double? price;
final double? discount;
final double? ratings;

const OrderPage({
  this.id,
  this.name,
  this.imagePath,
  this.description,
  this.category,
  this.discount,
  this.price,
  this.ratings

});

@override
_OrderPageState createState() => _OrderPageState();

}

class _OrderPageState extends State<OrderPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Carte de commande", style: TextStyle(color: Colors.black),),
      //   centerTitle: true,
      //   backgroundColor: Colors.red,
      //   elevation: 0.8,
      // ),
       body: Center(child: Text("order card"),)
       // Expanded(
      //   child: ListView(
      //     padding: EdgeInsets.symmetric(horizontal: 10),
      //      scrollDirection: Axis.vertical,
      //      shrinkWrap: true,
      //      children: [
      //        //OrderCard(),
           
            
             
            
          
      //      ],
      //   ),
      // ),
      //bottomNavigationBar:_buildTotalContainer() ,
  );
  }
//      Widget _buildTotalContainer(){
//        return Container(
//          height: 120,
//          margin: EdgeInsets.only(top: 20),
//          padding: EdgeInsets.symmetric(horizontal: 10),
//          child: Column(
//            children:  [
           
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                Text("Prix Total :", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey),),
//                 Text("7500 KMF",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.green),


//                 )],
//             ),
//             SizedBox(height: 30,),
//             GestureDetector(
//               onTap: (){
//                  Navigator.of(context).push(MaterialPageRoute(
//                         builder: (BuildContext context) => LoginPage()));
//               },
//               child: Container(
                
//                 width: MediaQuery.of(context).size.width,
//                 height: 40,
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.circular(30),
            
//                    ),
//                    child: Center(
//                      child: Text("Passer au Payement",
//                      style: TextStyle(
//                        color: Colors.white,
//                        fontWeight: FontWeight.bold,
//                        fontSize:18
//                      ),
//                      ),
//                    ),
//               ),
//             )
//             ],
//          ),
//        );

//   }
 }
