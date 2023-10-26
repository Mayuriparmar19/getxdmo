import 'package:hive_flutter/adapters.dart';
part 'notes_model.g.dart';

@HiveType(typeId: 0)
class MyModel {
   @HiveField(0)
  String title;
   @HiveField(1)
  String des;

  MyModel({required this.title, required this.des});
}
