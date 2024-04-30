import 'package:flutter/material.dart';
import 'package:wordy/screens/welcome.dart';

void main() {
  runApp(const WordyApp());
}

class WordyApp extends StatelessWidget {
  const WordyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        fontFamily: 'Montserrat'
      ),
      
      home: const WelcomeScreen(),
    );
  }
}