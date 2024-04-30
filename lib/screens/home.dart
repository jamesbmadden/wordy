/// root of the app. navigate to different language pages, add a new one, or quick add a word
import 'package:flutter/material.dart';
import 'package:wordy/components/GradientButton.dart';
import 'package:wordy/screens/language.dart';
import 'package:wordy/components/LanguageTile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          const LanguageTile("Gaelic"),
          const LanguageTile("French"),
          gradientButtonFactory("Open", () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LanguageScreen("Gaelic")));
          })
        ]
      ))
    );
  }

}