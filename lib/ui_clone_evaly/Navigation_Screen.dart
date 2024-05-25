import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_clone_evaly/ui_clone_evaly/HomeScreen.dart';
import 'package:ui_clone_evaly/ui_clone_evaly/ProductScreen.dart';

void main(){
  runApp(MaterialApp(home: Navigation_Screen(),
    debugShowCheckedModeBanner: false,));
}
class Navigation_Screen extends StatefulWidget{
  @override
  State<Navigation_Screen> createState() => _Navigation_ScreenState();
}

class _Navigation_ScreenState extends State<Navigation_Screen> {
  int index=0;
  var screens=[ProductScreen(),HomeScreen(),HomeScreen(),HomeScreen(),];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(onTap: (tapindex){
        setState(() {
          index=tapindex;
        });
      },
          currentIndex: index,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Wishlist",),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart",),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: "DashBoard",),
          ]),
      body: screens[index],
    );
  }
}