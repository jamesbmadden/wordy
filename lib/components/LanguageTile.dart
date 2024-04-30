/// reusable card for the homepage to display a flag and language name
import 'package:flutter/material.dart';

class LanguageTile extends StatelessWidget {
  const LanguageTile(this.language, {super.key});

  final String language;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        // first - a container for the image
        Container(
          width: 144.0,
          height: 144.0,
          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(32.0))),
          clipBehavior: Clip.hardEdge,
          child: Hero(
            tag: '${language}Hero',
            child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Flag_of_Scotland.svg/1200px-Flag_of_Scotland.svg.png', fit: BoxFit.cover)
          ),
        ),
        Text(language, textAlign: TextAlign.center, style: const TextStyle(fontSize: 20.0))
      ]
    );

  }
}