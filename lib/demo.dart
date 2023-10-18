import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Fade First',
                  textStyle: const TextStyle(
                      fontSize: 50.0, fontWeight: FontWeight.bold),
                ),
                ScaleAnimatedText(
                  'Then Scale',
                  textStyle:
                      const TextStyle(fontSize: 50.0,),
                ),
                ColorizeAnimatedText('Then Color ',
                    textStyle: const TextStyle(fontSize: 50),
                    colors: [Colors.purple, Colors.yellow, Colors.green],speed:const Duration(milliseconds: 1000)),
                TypewriterAnimatedText('Type This',
                    textStyle: const TextStyle(fontSize: 50),speed:const  Duration(milliseconds: 1000)),
                WavyAnimatedText('Wavy Text',
                    textStyle: const TextStyle(fontSize: 50),speed: const Duration(milliseconds:1000 )),
                RotateAnimatedText('Rotate Text',
                    textStyle: const TextStyle(fontSize: 50),duration: const Duration(milliseconds: 1000))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
