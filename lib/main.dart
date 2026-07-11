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
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 24,
            ),
            child: Column(
                children: [
                const Spacer(),

            Container(
            width: 155,
            height: 155,
            decoration: BoxDecoration(
            color: const Color(0xFFC9A84C),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: const Center(
        child: Text(
          'P',
          style: TextStyle(
            color: Colors.white,
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),

    const SizedBox(height: 25),

    const Text(
    'PARKSHARE',
    style: TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    color: Color(0xFF1B2A4A),
    ),
    ),

    const SizedBox(height: 18),

    const Text(
    'Estacionar nunca foi tão fácil.',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    ),
    ),

    const SizedBox(height: 15),

    const Text(
    'Encontre estacionamento perto do seu destino\nou transforme o seu lugar livre numa fonte de rendimento.',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 18,
    color: Colors.black54,
    height: 1.4,
    ),
    ),

    const Spacer(),

    SizedBox(
    width: double.infinity,
    height: 60,
    child: ElevatedButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (_) => const LanguageScreen(),
    ),
    );
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF1B2A4A),
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18),
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

    const SizedBox(height: 24),

    const Text(
    'ParkShare\nSuíça 🇨🇭',
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.black45,
    fontSize: 13,
    ),
    ),
    ],
    ),
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
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(28),
              child: SingleChildScrollView(
                  child: Column(
                      children: [
                      const SizedBox(height: 20),

                  const Text(
                  '🌍',
                  style: TextStyle(fontSize: 50),
            ),

            const SizedBox(height: 30),

        const Text(
        'Escolha o seu idioma',
        textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    color: Color(0xFF1B2A4A),
    ),
    ),

    const SizedBox(height: 10),

    const Text(
    'Selecione o idioma que pretende utilizar.\nPoderá alterá-lo a qualquer momento.',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 16,
    color: Colors.black54,
    ),
    ),

    const SizedBox(height: 40),

    languageButton('🇵🇹 Português'),
    languageButton('🇬🇧 English'),
    languageButton('🇫🇷 Français'),
    languageButton('🇩🇪 Deutsch (Mais utilizado na Suíça)'),
    ],
    ),
    ),
    ),
    ),
    );
  }

  static Widget languageButton(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SizedBox(
        width: double.infinity,
        height: 65,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1B2A4A),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}