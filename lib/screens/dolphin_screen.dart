import 'package:flutter/material.dart';

class DolphinScreen extends StatelessWidget {
  const DolphinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Dolphin Screen")
      ),
      body: Center(
        child:Text("Dolphin Screen")
      ),
    );
  }
}