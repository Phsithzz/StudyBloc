import 'package:flutter/material.dart';

class CatScreen extends StatelessWidget {
  const CatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Cat Screen")
      ),
      body: Center(
        child:Text("Cat Screen")
      ),
    );
  }
}