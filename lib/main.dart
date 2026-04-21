import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_study/bloc/counter_cubit.dart';
import 'package:flutter_bloc_study/screens/ant_screen.dart';
import 'package:flutter_bloc_study/screens/bee_screen.dart';
import 'package:flutter_bloc_study/screens/cat_screen.dart';
import 'package:flutter_bloc_study/screens/dolphin_screen.dart';
import 'package:flutter_bloc_study/screens/home_screen.dart';
// import 'package:flutter_bloc_study/screens/login_screen.dart';
import 'package:flutter_bloc_study/screens/shopping_screen.dart';
import 'package:flutter_bloc_study/utils/route_name.dart';

void main() {
  runApp(
    BlocProvider(create: (context) => CounterCubit(), child: const MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RouteName.home: (_) => const HomeScreen(),
        RouteName.ant: (_) => const AntScreen(), //basic cubit
        RouteName.bee: (_) => const BeeScreen(), //simple cubit
        RouteName.cat: (_) => const CatScreen(), //standard cubit
        RouteName.dolphin: (_) => const DolphinScreen(), // Advance cubit
        RouteName.shopping: (_) => const ShoppingScreen(), //Cart Bloc
      },
      initialRoute: RouteName.home,
    );
  }
}
