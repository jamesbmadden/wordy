/// root of the app. navigate to different language pages, add a new one, or quick add a word
import 'package:flutter/material.dart';
import 'package:wordy/controller/language_controller.dart' as lang_controller;
import 'package:wordy/view/components/GradientButton.dart';
import 'package:wordy/view/screens/language.dart';
import 'package:wordy/view/components/Title.dart';
import 'package:wordy/view/components/LanguageTile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // get language data
    List<lang_controller.LanguageInfo> languages = lang_controller.getLanguages();

    return Scaffold(
      body: Center(child: Column(
        children: [
          const AppTitle(big: false),
          Column(children: languages.map((language) => LanguageTile(language.name)).toList()),
          gradientButtonFactory("Open", () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LanguageScreen("Gaelic")));
          })
        ]
      ))
    );
  }

}