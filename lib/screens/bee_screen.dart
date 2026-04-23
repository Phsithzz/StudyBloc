import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_study/bloc/simple_cubit.dart';

class BeeScreen extends StatelessWidget {
  const BeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SimpleCubit, SimpleState>(
      listener: (context, state) {
        // TODO: implement listener
        log('state: $state');
        if (state.count % 10 == 0) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Alert Somthing"),
              content: Text("lorem"),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is SimpleLoadingState) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        return Scaffold(
          appBar: AppBar(title: Text("Bee Screen")),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              log("increment");
              context.read<SimpleCubit>().increment();
            },
            child: Text("Simple"),
          ),

          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Bee Screen ${state.count}"),
                Text("Bee Screen ${state.price}"),
                Text("Bee Screen ${state.message}"),
              ],
            ),
          ),
        );
      },
    );
  }
}
