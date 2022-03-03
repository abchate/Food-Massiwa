import 'package:flutter/material.dart';
import 'package:food_massiwa/src/pages/sign_up.dart';

class LoginPage extends StatefulWidget{
@override

_LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{

  Widget _buildEmeilField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email ou numero",
        hintStyle: TextStyle(color: Colors.grey,fontSize: 20)
      ),
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
  bool _Visibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 80, left: 10, right: 10),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Authentification", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                SizedBox(height: 80,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text("Mot de passe oublié?", style: TextStyle(fontSize: 20, color: Colors.red),),
      
                  ],
                ), 
                SizedBox(height: 10,),
                Card(
                  elevation: 0.8,
                  child: Padding(padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      _buildEmeilField(),
                      SizedBox(height: 15,),
                      _buildPasswordField()
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
                    child: Text("Se connecter", style: TextStyle(color: Colors.white,fontSize: 16),),
                  ),
                ),
                Divider(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Je n'ai pas de compte?", style: TextStyle(fontSize: 16),),
                    SizedBox(width: 10,),
                    GestureDetector(
                        onTap: (){
                                 Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SignPage()));
                               },
                      child: const Text("s'inscrire", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),))
                  ],
                )
             ],
      
           ),
        ),
      )

    );
  }
}