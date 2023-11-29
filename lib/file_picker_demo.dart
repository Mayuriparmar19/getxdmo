import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilePickerDemo extends StatefulWidget {
  const FilePickerDemo({super.key});

  @override
  State<FilePickerDemo> createState() => _FilePickerDemoState();
}

class _FilePickerDemoState extends State<FilePickerDemo> {
  Future<void> openFileDetails() async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    if (resultFile != null) {
      PlatformFile platformFile = resultFile.files.first;
      if (kDebugMode) {
        print(platformFile.size.toString());
        print(platformFile.path);
        print(platformFile.extension);
        print(platformFile.identifier);
        print(platformFile.bytes);
        print(platformFile.readStream);
        print(platformFile.reactive);
        print(platformFile.toString());
      }
      // if (kDebugMode) {
      //   print(platformFile.name);
      // }
      // if (kDebugMode) {
      //   print(platformFile.path);
      // }
      // if (kDebugMode) {
      //   print(platformFile.extension);
      // }
      // if (kDebugMode) {
      //   print(platformFile.bytes);
      // }
      // if (kDebugMode) {
      //   print(platformFile.identifier);
      // }
      // if (kDebugMode) {
      //   print(platformFile.readStream);
      // }
    } else {
      if (kDebugMode) {
        print('file is not selected');
      }
    }
  }
  Future<void> openSingleFile ()async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if(result!= null){
      PlatformFile platformFile = result.files.single;
      if (kDebugMode) {
        print(platformFile.name);
        print(platformFile.size);
      }
    }
    else {
       if(kDebugMode){
          print('File  Not selected');
       }
    }
  }
  Future<void> specificExtension()async{
    FilePickerResult? res = await FilePicker.platform.pickFiles(type:  FileType.custom,
    allowedExtensions: ['jpg','png','pdf','docx','png']
    );
    if(res!= null){
      PlatformFile platformFiles =  res.files.first;
      if(kDebugMode){
         print(platformFiles.name);
      }
    }else{
       if(kDebugMode){
          print('File Not Selected');
       }
    }

  }
  Future<void> selectMultipleFiles ()async{

    FilePickerResult? filePickerResult = await FilePicker.platform.pickFiles(allowMultiple: true);
    if(filePickerResult != null){

      List<File> files = filePickerResult.paths.map((e) => File(e!)).toList();

      if(kDebugMode){
        print(files.length);
      }
    }
    else {
            if(kDebugMode){
              print('Files Not Selected');
            }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
          ),
        ),
        title: const Text(
          'File Picker ',
        ),
      ),
      body: Center(
        child: Column(

          children: [
           //  Container(
           //    color: Colors.grey.shade100,
           //    height: 300,
           //    width: 250,
           //  ),
           //const  SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: 180,
              child: ElevatedButton(
                onPressed: () {
                 specificExtension();
                },
                child: const Text(
                  'Specific Extension',
                ),
              ),
            ),
           const SizedBox(height: 10,),
            SizedBox(
              height: 60,
              width: 180,
              child: ElevatedButton(
                onPressed: () {
                  selectMultipleFiles();
                },
                child: const Text(
                  'Select Multiple File',
                ),
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 60,
              width: 180,
              child: ElevatedButton(
                onPressed: () {
                  openSingleFile();
                },
                child: const Text(
                  'Select single File',
                ),
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  openFileDetails();
                },
                child: const Text(
                  'Select File with details',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
