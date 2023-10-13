import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Row(
  children: [
    AnimatedTextKit(
      animatedTexts: [
        FadeAnimatedText(
          'Fade First',
          textStyle: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        ScaleAnimatedText(
          'Then Scale',
          textStyle: const TextStyle(fontSize: 20.0, fontFamily: 'Canterbury'),
        ),
        ColorizeAnimatedText('Color ', textStyle: const TextStyle(fontSize: 20), colors: [ Colors.redAccent,Colors.greenAccent,Colors.blueAccent])
      ],
    ),
  ],
),
    );
  }
}
