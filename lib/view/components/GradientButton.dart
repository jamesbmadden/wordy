/// generates a gradient filled button following the app's styles
import 'package:flutter/material.dart';
import 'package:wordy/view/constants/colours.dart';

FilledButton gradientButtonFactory(String label, void Function()? onPressed) {
  return FilledButton(
    onPressed: onPressed, 
    style: const ButtonStyle(
      padding: MaterialStatePropertyAll(EdgeInsets.all(0.0)), 
      maximumSize: MaterialStatePropertyAll(Size(256.0, 64.0))
    ),
    child: Ink(
      decoration: const BoxDecoration(
        gradient: MAIN_GRADIENT,
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
      child: Container(
        constraints: const BoxConstraints(minWidth: 256.0, minHeight: 64.0), // min sizes for Material buttons
        alignment: Alignment.center,
        child: Text(
          label,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}