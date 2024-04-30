/// root of the app. navigate to different language pages, add a new one, or quick add a word
import 'package:flutter/material.dart';
import 'package:wordy/components/GradientButton.dart';
import 'package:wordy/screens/language.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          Hero(
            tag: 'GaelicHero',
            child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Flag_of_Scotland.svg/1200px-Flag_of_Scotland.svg.png')
          ),
          gradientButtonFactory("Open", () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LanguageScreen("Gaelic")));
          })
        ]
      ))
    );
  }

}