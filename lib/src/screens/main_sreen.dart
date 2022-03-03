import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:food_massiwa/src/pages/maps_page.dart';
import 'package:food_massiwa/src/pages/order_page.dart';
import 'package:food_massiwa/src/pages/profile_page.dart';
import 'package:food_massiwa/src/pages/shopping_cart.dart';
import 'package:food_massiwa/src/scoped_model/Resto_model.dart';
import 'package:food_massiwa/src/scoped_model/food_model.dart';
import 'package:food_massiwa/src/scoped_model/main_model.dart';
import 'package:provider/provider.dart';
import '../pages/home_page.dart';

class MainSreen extends StatefulWidget{
  
  
  final MainModel? model;
  const MainSreen({this.model});
  @override
  State<StatefulWidget> createState() {
   return _MainScreenState();
  }
  
}
class _MainScreenState extends State<MainSreen>{
 
  int currentTabIndex = 0;
  List<Widget>? pages;
  Widget? currentPage;
  HomePage? homePage;
  MapsPage? mapsPage;
  OrderPage? orderPage;
  ProfilePage? profilePage;
  @override
  void initState() {
     widget.model!.fetchResto();
     widget.model!.fetchFood();
    homePage = HomePage();
    mapsPage = MapsPage();
    orderPage = OrderPage();
    profilePage = ProfilePage();
    pages = [HomePage(), MapsPage(), OrderPage(), ProfilePage()];
    currentPage = homePage;
    super.initState();
   
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<MainModel>(
      builder: (BuildContext context, MainModel model, Widget? child) {
      return SafeArea(
      child: Scaffold(
               appBar: AppBar(
              
              title: Text("Food Massiwa", style: TextStyle(color: Colors.black, fontSize: 18,)),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              actions: [
                 Badge(
                  position: BadgePosition.topEnd(top: 7,end: 7),
                  badgeColor: Colors.black,
                  badgeContent: Text(model.Cardcount.toString(), style: TextStyle(color: Colors.white),),
                  child:  IconButton(onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => ShoppingCart ()));
                  }
                , icon: Icon(Icons.shopping_cart, size: 30, color: Theme.of(context).primaryColor)),
               
                ),
                Badge(
                  position: BadgePosition.topEnd(top: 7,end: 7),
                  badgeColor: Colors.black,
                  badgeContent: Text(model.count.toString(), style: TextStyle(color: Colors.white),),
                  child:  IconButton(onPressed: 
                () {}, icon: Icon(Icons.notifications_none, size: 30, color: Theme.of(context).primaryColor)),
               
                ),
                
                
              ],
            ),
            drawer: Drawer(),
    
      
        
        //resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
          onTap:(int index){
            setState(() {
              currentTabIndex = index;
              currentPage = pages![index];
            });
          },
          currentIndex: currentTabIndex,
          type: BottomNavigationBarType.fixed,
           backgroundColor: Colors.white,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            selectedFontSize: 14,
            unselectedFontSize: 10,
      
          items: const [
              BottomNavigationBarItem(
                title: Text("Accueil"),
                icon: Icon(Icons.home)
                ),
                BottomNavigationBarItem(
                title: Text("localisation"),
                icon: Icon(Icons.location_on)
                ),
                BottomNavigationBarItem(
                title: Text("Panier"),
                icon: Icon(Icons.shopping_cart)
                ),
                BottomNavigationBarItem(
                title: Text("profil"),
                icon: Icon(Icons.person
                ),
                )],
          ),
          body: currentPage,
      ),
    );
  }
    );} 
}