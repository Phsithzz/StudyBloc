import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.account_circle, size: 130),
              const SizedBox(height: 30),
              const Text(
                "Authentication",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("username"),
                ),
              ),
              const SizedBox(height: 30),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("password"),
                ),
              ),
              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,

                    backgroundColor: Colors.teal,
                  ),
                  onPressed: () {},
                  child: Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
