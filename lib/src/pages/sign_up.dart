import 'package:flutter/material.dart';

class SignPage extends StatefulWidget{
@override

_SignPageState createState() => _SignPageState();

}

class _SignPageState extends State<SignPage>{
  bool _Visibility = true;
   Widget _buildNomField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Nom et Prenom",
        hintStyle: TextStyle(color: Colors.grey,fontSize: 20)
      ),
    );
  }
   Widget _buildEmeilField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(color: Colors.grey,fontSize: 20)
      ),
    );
  }
   Widget _buildNumeroField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Numero de téléphone",
        hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
        //prefixText: '+269'
      ),
      keyboardType: TextInputType.phone,
      
    );
   }
  Widget _buildPasswordField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Mot de passe",
        hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _Visibility = !_Visibility;
            });

          },
          icon: _Visibility? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        )

      ),
      obscureText: _Visibility,
    );
  }
   Widget _buildConfirmeField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirmer le Mot de passe",
        hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _Visibility = !_Visibility;
            });

          },
          icon: _Visibility? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        )

      ),
      obscureText: _Visibility,
    );
  }

 
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 80, left: 10, right: 10),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Inscription", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
               
               
                SizedBox(height: 30,),
                Card(
                  elevation: 0.8,
                  child: Padding(padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      _buildNomField(),
                      SizedBox(height: 15,),
                      _buildEmeilField(),
                      SizedBox(height: 15,),
                      _buildNumeroField(),
                      
                      SizedBox(height: 15,),
                      _buildPasswordField(),
                      SizedBox(height: 15,),
                      _buildConfirmeField()
                    ],
                  ),
                  ),
                  
                ),
                SizedBox(height: 25,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Center(
                    child: Text("Je m'inscris", style: TextStyle(color: Colors.white,fontSize: 16),),
                  ),
                ),
               
             ],
      
           ),
        ),
      )

    );
 
  }
}