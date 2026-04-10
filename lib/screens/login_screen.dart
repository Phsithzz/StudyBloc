import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    userController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void handleLogin() {
    if (_formKey.currentState!.validate()) {
      // ผ่าน validation
      print(
        "Login ${userController.text} - ${passwordController.text}",
      );
    } else {
      // ไม่ผ่าน
      print("Form invalid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Form(
            key: _formKey, 
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
                  controller: userController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "username",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "กรุณากรอก username";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),

             
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "password",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "กรุณากรอก password";
                    }
                    if (value.length < 6) {
                      return "รหัสต้องอย่างน้อย 6 ตัว";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),

         
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.teal,
                    ),
                    onPressed: handleLogin,
                    child: const Text("Login"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}