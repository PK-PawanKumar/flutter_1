import 'package:flutter/material.dart';

// ignore: camel_case_types
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

// ignore: camel_case_types
class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar

      appBar: AppBar(
        // leading

        leading: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            size: 30,
            color: Colors.black,
          ),
          tooltip: "navigation menu",
        ),
        //title

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text("title bar"),
            const Icon(Icons.api),
          ],
        ),
        // action

        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            tooltip: "search",
          )
        ],
      ),
      // body

      body: const Card(
        child: Center(
          child: Text("hello world !"),
        ),
      ),
    );
  }
}
