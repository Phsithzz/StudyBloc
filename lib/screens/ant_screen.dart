import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_study/bloc/counter_cubit.dart';

class AntScreen extends StatefulWidget {
  const AntScreen({super.key});

  @override
  State<AntScreen> createState() => _AntScreenState();
}

class _AntScreenState extends State<AntScreen> {
  var localState = 0;
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
              context.read<CounterCubit>().increment();
            },
            child: Text("+"),
          ),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () {
              log("decrement");
              context.read<CounterCubit>().decrement();
            },
            child: Text("-"),
          ),
          FloatingActionButton(
            heroTag: "btn3",
            onPressed: () {
              localState++;
              log("local");
              setState(() {
                
              });
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
            Text("localState: $localState"),
          ],
        ),
      ),
    );
  }
}
