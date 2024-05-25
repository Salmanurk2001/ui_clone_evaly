import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_clone_evaly/main.dart';
import 'package:ui_clone_evaly/ui_clone_evaly/ProductDetailScreen.dart';

void main(){
  runApp(MaterialApp(home: ProductScreen(),
    debugShowCheckedModeBanner: false,));
}
class ProductScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("evaly"),
    leading: Icon(Icons.arrow_back),
    actions: [Icon(Icons.person)],
        ),
        body:GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: List.generate(20,
                  (index) => MyWidget(label:Text("data"),onpressed: (){},
                bgcolor: Colors.white,
                image: Image.asset('assets/images/bag3.jpg')
              )),
        )
    );
  }
}