import 'package:getxdmo/hive/notes_model.dart';
import 'package:hive_flutter/adapters.dart';

class Boxes{
  static Box<MyModel> getData() => Hive.box<MyModel>('notes');
}