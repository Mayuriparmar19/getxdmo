import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:record/record.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RecordAudio extends StatefulWidget {
  const RecordAudio({Key? key}) : super(key: key);

  @override
  State<RecordAudio> createState() => _RecordAudioState();
}

class _RecordAudioState extends State<RecordAudio> {
  // bool showPlayer = false;
  //  String? audioPath;
  bool isStarted = false;
  late AudioRecorder recordAudio;
  late AudioPlayer audioPlayer;
   String audioPath ='';
    bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    recordAudio = AudioRecorder();
    audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    recordAudio.dispose();
    audioPlayer.dispose();
    super.dispose();
  }

  Future<void> startRecording() async {
    try {
      if (await recordAudio.hasPermission()) {

        await recordAudio.start(
            const RecordConfig(),
          path: 'sdk_gphone_x86/Music');
         setState(() {
           isStarted = true;
         });
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
    }
  }

   Future<void>stopRecording()async{

       try{
      String? path = await  recordAudio.stop();
      setState(() {
        isStarted= false;
        audioPath = path!;
      });
       }catch(e){
          if(kDebugMode)
            {
               print('Error In Stopping :$e');
            }
       }
   }

    Future<void> playAudio ()async{

     try{
       Source urlSource = UrlSource(audioPath);
                await audioPlayer.play(urlSource);
     }
     catch(e){
        if(kDebugMode){
           print('Error In playing:$e');
        }
     }
    }

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
          if(isStarted)
           const  Text('Recording in progress ',style: TextStyle( fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
          FloatingActionButton(
            backgroundColor: Colors.deepOrange,
            onPressed: () {
              isStarted == true ?stopRecording():startRecording();
            },
            child: Icon(
                isStarted == true ?Icons.stop:Icons.mic
            )
          ),

           const SizedBox(height: 20,),
               if(!isStarted && audioPath != null)
         IconButton(onPressed: (){
            playAudio();
          },
            icon: const Icon(CupertinoIcons.play_arrow_solid),
          )
        ],
      ),
    );
  }
}
