import 'package:flutter/material.dart';

class BeeScreen extends StatelessWidget {
  const BeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Bee Screen")
      ),
      body: Center(
        child:Text("Bee Screen")
      ),
    );
  }
}