import 'package:flutter/material.dart';
import 'package:food_massiwa/src/widgets/custom_list_tile.dart';
import 'package:food_massiwa/src/widgets/small_button.dart';

class ProfilePage extends StatefulWidget{
@override
_ProfilePageState createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage>{
  bool turnOnNotification = false;
  bool turnOnLocation = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10,right: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Profile", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(
                     height: 120,
                     width: 120,
                     decoration: BoxDecoration(
                       color: Colors.red,
                       borderRadius: BorderRadius.circular(60),
                       boxShadow: const [
                         BoxShadow(
                           blurRadius: 3.0,
                           offset: Offset(0,4),
                           color: Colors.black38
                         )
                       ],
                       image: const DecorationImage(
                         image: AssetImage("assets/abchat.png"),
                         fit: BoxFit.cover
                          ),
                     ),
                     
                   ),
                   SizedBox(width: 30,),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text("Abchate Ali Ibrahim", style: TextStyle(fontSize:16),),
                        SizedBox(height: 10,),
                       Text("+269 3582728",style: TextStyle(fontSize: 16),),
                       SizedBox(height: 15,),
                      SmallButton(btnText: "Modifier",)
                       
                     ],
                   )
                 ],
               ),
               SizedBox(height: 20,),
               const Text("Compte", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
               SizedBox(height: 20,),
               Card(
                 elevation: 5,
                 child: Padding(
                   padding: EdgeInsets.symmetric(horizontal: 20),
                   child: Column(
                     
                     children:  const [
                      CustomListtile(
                        icon: Icons.location_on,
                        text: "Position",
                      ),
                       Divider(height: 30, color: Colors.grey,),
                         CustomListtile(
                        icon: Icons.visibility,
                        text: "Changer le mot de passe",
                      ),
                       Divider(height: 30, color: Colors.grey,),
                         CustomListtile(
                        icon: Icons.history,
                        text: "historique",
                      ),
                       Divider(height: 30, color: Colors.grey,),
                        CustomListtile(
                        icon: Icons.payment,
                        text: "payement",
                      ),
                      Divider(height: 30, color: Colors.grey,),
                     ],
                   ),
                   ),
               ),
                SizedBox(height: 20,),
               const Text("Notifications", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
               SizedBox(height: 20,),
               Card(
                 elevation: 8.8,
                 child: Padding(
                   padding: EdgeInsets.all(16),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           const Text("Notification",style: TextStyle(fontSize: 16)),
                           Spacer(),
                           Switch(
                             //hoverColor: Colors.grey,
                             value: turnOnNotification, onChanged: (bool value){
                               setState(() {
                                 turnOnNotification = value;
                               });
                               
                             },
                             ),
                             
      
                         ],
                       ),
                        Divider(height: 30, color: Colors.grey,),
                        
                         Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           const Text("Ma Position",style: TextStyle(fontSize: 16)),
                           
                           Switch(
                             //hoverColor: Colors.grey,
                             value: turnOnLocation, onChanged: (bool value){
                               setState(() {
                                 turnOnLocation = value;
                               });
                               
                             },
                             ),
                             
      
                         ],
                       ),
                        Divider(height: 30, color: Colors.grey,),
                     ],
                   ),
                 ),
               ),
                SizedBox(height: 20,),
               const Text("Autres", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
               SizedBox(height: 20,),

                
               Card(
                  elevation: 8.8,
                  child: Padding(
                    padding:  EdgeInsets.all(16),
                    child: Container(
                      //width: MediaQuery.of(context).size.width,
                      child: Column(
                       
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Langue", style: TextStyle(fontSize: 16),),
                           Divider(height: 30, color: Colors.grey,),
                          SizedBox(height: 15,),
                           Text("Devise", style: TextStyle(fontSize: 16),),
                           Divider(height: 30, color: Colors.grey,),
                        ],
                      ),
                    ),
                  ),
                )
      
            ], 
          ),
        ),
      ),
    );
  }
}