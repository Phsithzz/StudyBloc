import 'package:flutter/material.dart';
import 'package:flutter_bloc_study/utils/route_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen | BLoC Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                print("pushAnt");
                Navigator.pushNamed(context, RouteName.ant);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.black,
              ),
              child: Text("Ant"),
            ),
            ElevatedButton(
              onPressed: () {
                print("pushBee");
                Navigator.pushNamed(context, RouteName.bee);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                foregroundColor: Colors.black,
              ),
              child: Text("Bee"),
            ),
            ElevatedButton(
              onPressed: () {
                print("pushCat");
                Navigator.pushNamed(context, RouteName.cat);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.black,
              ),
              child: Text("Cat"),
            ),
            ElevatedButton(
              onPressed: () {
                print("pushDolphin");
                Navigator.pushNamed(context, RouteName.dolphin);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                foregroundColor: Colors.black,
              ),
              child: Text("Dolphin"),
            ),
          ],
        ),
      ),
    );
  }
}
