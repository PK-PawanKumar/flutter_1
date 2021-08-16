import 'package:flutter/material.dart';

// ignore: camel_case_types
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

// ignore: camel_case_types
class _homeScreenState extends State<homeScreen> {
  int count = 0;
  String s = "Completed";
  var clr = Colors.green;
  var ICON = Icons.check;

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
            const Text("title bar",
                style: TextStyle(
                  fontSize: 24,
                )),
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

      body: Card(
        child: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("$count"),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () {
                  setState(
                    () {
                      count++;
                    },
                  );
                },
                child: const Text("increase :"),
              ),

              // ignore: deprecated_member_use
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState(
                        () {
                          if (clr == Colors.green) {
                            clr = Colors.red;
                            s = "Incompleted";
                            ICON = Icons.timelapse;
                          } else {
                            clr = Colors.green;
                            s = "Completed";
                            ICON = Icons.check;
                          }
                        },
                      );
                    },
                    child: Text(s),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      ICON,
                      color: clr,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

      // floating action button

      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.edit,
          color: Colors.black,
        ),
        backgroundColor: (Colors.amber),
        tooltip: 'edit',
      ),
    );
  }
}
