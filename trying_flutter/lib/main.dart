// dart format width=60

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Flutter is easy!"),
        ),
        body: PageView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.red,
              width: screenWidth,
              child: const Text("Red"),
            ),
            Container(
              color: Colors.blue,
              width: screenWidth,
              child: const Text("Blue"),
            ),
            Container(
              color: Colors.green,
              width: screenWidth,
              child: const Text("Green"),
            ),
            Container(
              color: Colors.purple,
              width: screenWidth,
              child: const Text("Purple"),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("Pressed!");
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