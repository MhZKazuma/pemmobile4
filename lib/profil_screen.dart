import 'package:flutter/material.dart';

class ProfilScreen extends StatefulWidget {
  final String email;

  const ProfilScreen({super.key, required this.email});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  bool modegelap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: modegelap ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true,
        backgroundColor: modegelap ? Colors.grey[900] : Colors.blue,
        titleTextStyle: TextStyle(
          fontSize: 22,
          color: modegelap ? Colors.white : Colors.black,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              widget.email,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: modegelap ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  modegelap = !modegelap;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: modegelap ? Colors.white : Colors.black,
                foregroundColor: modegelap ? Colors.black : Colors.white,
              ),
              child: Text(modegelap ? 'Mode Terang' : 'Mode Gelap'),
            ),
          ],
        ),
      ),
    );
  }
}
