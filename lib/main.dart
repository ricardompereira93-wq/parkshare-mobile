import 'package:flutter/material.dart';

void main() {
  runApp(const ParkShareApp());
}

class ParkShareApp extends StatelessWidget {
  const ParkShareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ParkShare',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                const Icon(
                Icons.local_parking,
                size: 120,
                color: Color(0xFFC9A84C),
              ),

              const SizedBox(height: 30),

          const Text(
          'PARKSHARE',
          style: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
          color: Color(0xFF1B2A4A),
      letterSpacing: 2,
    ),
    ),

    const SizedBox(height: 20),

    const Text(
    'O teu lugar,\na dois toques.',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 22,
    color: Colors.black87,
    ),
    ),

    const SizedBox(height: 60),

    SizedBox(
    width: double.infinity,
    height: 55,
    child: ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF1B2A4A),
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    ),
    ),
    child: const Text(
    'COMEÇAR',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    );
    }
}