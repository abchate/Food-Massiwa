

import 'package:flutter/material.dart';

class RestoCard extends StatefulWidget{

 final String? idResto;
 final String? nameResto;
  final String? imageResto;
  final String? descriptionResto;
  final String? AdresseResto;
  final double? ratingsResto;

   const RestoCard({
    this.idResto,
    this.nameResto,
    this.imageResto,
    this.descriptionResto,
    this.AdresseResto,
    this.ratingsResto, 
  });

  @override
  State<StatefulWidget> createState() {
    return RestoCardState();
}

}
class RestoCardState extends State<RestoCard>{
  @override
  Widget build(BuildContext context) {
   return Container(
                       
                       margin: EdgeInsets.all(5),
                      height: 250,
                      width: 270,
     
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.white,
                         border: Border.all(color: Colors.white),

                   boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        offset: Offset(0, 4),
                        color: Colors.black.withOpacity(0.3)
                    )
                  ]
              ),
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Container(
                                 margin: EdgeInsets.all(2),
                               height: 150,
                             width: 140,
                             decoration: BoxDecoration(
                              
                              image: DecorationImage(
                                image: AssetImage(widget.imageResto!),
                                fit: BoxFit.fill
                               ),
                                
                                
                                
                                borderRadius: BorderRadius.circular(7)),
                            
                           
                           ),
                           Expanded(child: 
                           
                          Padding (
                    padding: const EdgeInsets.only( top: 0),
                         child:Column(
                           children: [
                            Container(
                             child: Row(
                               children: [
                                  Icon(Icons.restaurant_menu_sharp,color: Colors.black,),
                   
                  Padding(padding: const EdgeInsets.all(10),
                  child:Text(widget.nameResto!,
                  style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                  )
                   ) ),
                               ],
                             
                            )),
                         
                                SizedBox(height: 5),
                            Container(
                             child: Row(
                               children: [
                                  Icon(Icons.location_on,color: Colors.red,),
                   
                  Padding(padding: const EdgeInsets.all(10),
                  child:Text(widget.AdresseResto!,
                  style: TextStyle(
                          color: Colors.red,
                          fontSize: 15
                  )
                   ) ),
                               ],
                             
                            )),
                            Material(
                 color: Colors.transparent,
                 child: InkWell(
                   splashColor: Colors.green,
                   highlightColor: Colors.green,
                   onTap: () {
                    
                   },
                   
                   child:  Container(
                     padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                     child: Text('Ouvert',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                           fontSize: 15,
                           color: Colors.greenAccent

                       ),
                     ),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.greenAccent.withOpacity(0.2),
                         border: Border.all(color: Colors.black)
                     ),
                   ),
                 ),
               )
                              
                           ],

                         )
                             
                          )
                           ) ],
                           
                             
                           )


                         ],),

                     );
  }
  
}
