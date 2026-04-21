import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_study/bloc/counter_cubit.dart';

class AntScreen extends StatelessWidget {
  const AntScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ant Screen")),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () {
              log("increment");
            },
            child: Text("+"),
          ),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () {
              log("decrement");
            },
            child: Text("-"),
          ),
          FloatingActionButton(
            heroTag: "btn3",
            onPressed: () {
              log("local");
            },
            child: Text("local"),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text("CounterCubit: $state");
              },
            ),
            Text("localState: Y"),
          ],
        ),
      ),
    );
  }
}
