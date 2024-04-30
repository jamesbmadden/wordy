/// First page upon opening the app. Shows large title and explains the app
import 'package:flutter/material.dart';
import 'package:wordy/view/components/GradientButton.dart';
import 'package:wordy/view/constants/colours.dart';
import 'package:wordy/view/screens/home.dart';
import 'package:wordy/view/components/Title.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: BACKGROUND_GRADIENT),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppTitle(big: true),
            Container(
              margin: EdgeInsets.only(top: 25.0, bottom: 25.0),
              child: Text("Learn and practice words in thousands of languages.", textAlign: TextAlign.center, style: TextStyle(fontSize: 24.0)),
            ),
            gradientButtonFactory("Get Started", () {
              // navigate to home
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            })
          ],
        ))
      )
    );
  }

}