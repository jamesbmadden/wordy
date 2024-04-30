/// "wordy" in 5 languages for a fun effect
import 'package:flutter/material.dart';
import 'package:wordy/components/GradientText.dart';
import 'package:wordy/constants/colours.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key, required this.big});

  final bool big;

  @override
  Widget build(BuildContext context) {

    TextStyle mainStyle = TextStyle(fontSize: big ? 48.0 : 32.0, fontWeight: FontWeight.w900);
    // styles for the other rows
    TextStyle secondaryStyle = TextStyle(fontSize: big ? 48.0 : 24.0, fontWeight: FontWeight.w900);
    TextStyle tertiaryStyle = TextStyle(fontSize: big ? 48.0 : 16.0, fontWeight: FontWeight.w900);

    List<Widget> content = [
      Opacity(opacity: 0.33, child: GradientText("Foclach", gradient: MAIN_GRADIENT, style: tertiaryStyle)),
      Opacity(opacity: 0.66, child: GradientText("Verbeux", gradient: MAIN_GRADIENT, style: secondaryStyle)),
      GradientText("Wordy", gradient: MAIN_GRADIENT, style: mainStyle),
      Opacity(opacity: 0.66, child: GradientText("Faclach", gradient: MAIN_GRADIENT, style: secondaryStyle)),
      Opacity(opacity: 0.33, child: GradientText("Ordrik", gradient: MAIN_GRADIENT, style: tertiaryStyle))
    ];

    // either column or row depending on if it's big or not
    if (big) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: content,
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: content,
      );
    }
  }
}