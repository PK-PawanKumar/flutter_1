import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({ Key? key }) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("hello"),),
      body: Card(
        child: Container(
          child: Center(child: const Text("hello world !")),
        )
      ),
    );
  }
}