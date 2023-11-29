import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '';

class RecordNewAudio extends StatefulWidget {
  const RecordNewAudio({super.key});

  @override
  State<RecordNewAudio> createState() => _RecordNewAudioState();
}

class _RecordNewAudioState extends State<RecordNewAudio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(
                Icons.mic,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildWidget(),
        ],
      ),
    );
  }

  buildWidget() {
    bool isRecoding = false;
    final icon = isRecoding == true ? Icons.stop : Icons.mic;
    final text = isRecoding == false ? 'Start' : 'Stop';
    const textColor = Colors.white;
    final primary = isRecoding == false ? Colors.green : Colors.red;
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          elevation: 5, backgroundColor: primary, foregroundColor: textColor),
      icon: Icon(icon),
      label: Text(text),
    );
  }
}

class SoundRecorder {
  FlutterSoundRecorder? recorder;
}

class FlutterSoundRecorder {
}