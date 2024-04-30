/// open up the details view of the language
import 'package:flutter/material.dart';
import 'package:wordy/view/constants/colours.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen(this.language, {super.key});

  final String language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: BACKGROUND_GRADIENT),
        child: Column(
          children: [
            Hero(
              tag: '${language}Hero',
              child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Flag_of_Scotland.svg/1200px-Flag_of_Scotland.svg.png')
            ),
            Text(language)
          ]
        )
      )
    );
  }

}