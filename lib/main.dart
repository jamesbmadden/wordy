import 'package:flutter/material.dart';
import 'package:wordy/view/screens/welcome.dart';
import 'package:wordy/model/wordy_app.dart';
import 'package:wordy/model/language.dart';

void main() {

  // start the model and add some data (for testing)
  Language("Norwegian");
  Language("French");
  Language("Gaelic");

  // start the view
  runApp(const WordyView());
}

class WordyView extends StatelessWidget {
  const WordyView({super.key});

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