// dart format width=60

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    const colors = [
      Colors.red,
      Colors.blue,
      Colors.purple,
      Colors.green,
      Colors.amber,
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colors[count % colors.length],
          title: const Text("Flutter is easy!"),
        ),
        body: Center(
          child: Text(
            "$count",
            style: TextStyle(
              fontSize: 60,
              color: colors[count % colors.length],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplay_sharp),
              label: "Airplay",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Accounts",
            ),
          ],
        ),
      ),
    );
  }
}


// body: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     crossAxisAlignment: CrossAxisAlignment.end,
//     children: const [
//     Icon(Icons.backpack),
//     Icon(Icons.leaderboard),
//     Icon(Icons.person),
//     ],
// ),

// body: Stack(
//     children: [
//     Container(
//         color: Colors.red,
//         height: 100,
//         width: 100,
//     ),
//     Align(
//         alignment: AlignmentGeometry.center,
//         child: Icon(Icons.verified),
//     ),
//     ],
// ),

// body: ListView(
//     scrollDirection: Axis.horizontal,
//     addAutomaticKeepAlives: false,
//     children: [
//     Container(
//         color: Colors.red,
//         width: screenWidth,
//         child: const Text("Red"),
//     ),
//     Container(
//         color: Colors.blue,
//         width: screenWidth,
//         child: const Text("Blue"),
//     ),
//     Container(
//         color: Colors.green,
//         width: screenWidth,
//         child: const Text("Green"),
//     ),
//     Container(
//         color: Colors.purple,
//         width: screenWidth,
//         child: const Text("Purple"),
//     ),
//     ],
// ),

// body: PageView.builder(
//     itemCount: 10,
//     itemBuilder: (_, index) {
//     return Container(
//         color: colors[index % colors.length],
//         padding: EdgeInsets.all(15),
//         child: Text(
//         "Page $index",
//         style: TextStyle(fontSize: 30),
//         ),
//     );
//     },
// ),