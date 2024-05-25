// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text("evaly"),
            leading: Icon(Icons.menu),
            actions: [Icon(Icons.person)],
            bottom: TabBar(tabs: [
              Text(
                "Categorey",
                style: TextStyle(fontSize: 12.8),
              ),
              Text(
                "Brands",
                style: TextStyle(fontSize: 12.8),
              ),
              Text(
                "Brands",
                style: TextStyle(fontSize: 12.8),
              ),
              Text(
                "Brands",
                style: TextStyle(fontSize: 12.8),
              ),
              Text(
                "Shop",
                style: TextStyle(fontSize: 12.8),
              ),
            ]),
          ),
        ));
  }
}
