import 'package:flutter/material.dart';
import 'profil_screen.dart';

class Login3screen extends StatefulWidget {
  const Login3screen({super.key});

  @override
  State<Login3screen> createState() => _Login3screenState();
}

class _Login3screenState extends State<Login3screen> {
  bool passwordTertutup = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void tampilkanPassword() {
    setState(() {
      passwordTertutup = !passwordTertutup;
    });
  }

  void login() {
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilScreen(email: _emailController.text),
        ),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Email dan Password harus diisi')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Masukkan email",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: passwordTertutup,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Masukkan password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: tampilkanPassword,
                  icon: Icon(
                    passwordTertutup ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: login,
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
