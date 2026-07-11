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
  home: const WelcomeScreen(),
  );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: Padding(
  padding: const EdgeInsets.all(30),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

  Container(
  width: 120,
  height: 120,
  decoration: const BoxDecoration(
  color: Color(0xFFC9A84C),
  shape: BoxShape.circle,
  ),
  child: const Center(
  child: Text(
  'P',
  style: TextStyle(
  fontSize: 70,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  ),
  ),
  ),
  ),

  const SizedBox(height: 25),

  const Text(
  'PARKSHARE',
  style: TextStyle(
  fontSize: 36,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  color: Color(0xFF1B2A4A),
  ),
  ),

  const SizedBox(height: 15),

  const Text(
  'Estacionar nunca foi tão fácil.',
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
  onPressed: () {

  Navigator.push(
  context,
  MaterialPageRoute(
  builder: (context) => const LanguageScreen(),
  ),
  );

  },
  style: ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFF1B2A4A),
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15),
  ),
  ),
  child: const Text(
  'COMEÇAR →',
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
  );
  }
}

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: const Text('Idioma'),
  backgroundColor: const Color(0xFF1B2A4A),
  foregroundColor: Colors.white,
  ),
  body: Padding(
  padding: const EdgeInsets.all(24),
  child: Column(
  children: [

  const SizedBox(height: 30),

  const Text(
  'Escolha o seu idioma',
  style: TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  ),
  ),

  const SizedBox(height: 40),

  languageButton('🇵🇹 Português'),
  languageButton('🇬🇧 English'),
  languageButton('🇫🇷 Français'),
  languageButton('🇩🇪 Deutsch'),
  ],
  ),
  ),
  );
  }

  static Widget languageButton(String text) {
  return Padding(
  padding: const EdgeInsets.only(bottom: 15),
  child: SizedBox(
  width: double.infinity,
  height: 60,
  child: ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFF1B2A4A),
  foregroundColor: Colors.white,
  ),
  child: Text(
  text,
  style: const TextStyle(
  fontSize: 18,
  ),
  ),
  ),
  ),
  );
  }
}