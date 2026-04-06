import 'package:flutter/material.dart';
import 'package:flutter_bloc_study/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Menu"),
          actions: [
            PopupMenuButton(
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (context) {
                return <PopupMenuEntry>[
                  PopupMenuItem(value: "1",
                   child: Text("Menu One")),
                  PopupMenuDivider(),
                  PopupMenuItem(value: "2", 
                  child: Text("Menu Two")),
                ];
              },
            ),
          ],
        ),
        body: Center(child: Text("Flutter Simple Menu")),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () {
                print("pressed");
                showDialog(
                  context: context,
                  builder: (context) {
                    return Container(
                      color: Colors.amber,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Hello Dialog"),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("OK"),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Icon(Icons.add),
            );
          },
        ),
      ),
    );
  }
}
