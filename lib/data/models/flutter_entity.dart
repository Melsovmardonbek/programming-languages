import 'package:learning_programming_languages/data/models/entry_model.dart';
import 'package:learning_programming_languages/data/models/languages_entity.dart';

class FlutterEntity extends LanguagesEntity {
  List<EntryModel> entries;
  

  FlutterEntity({required this.entries, required super.title, required super.description, required super.image});
}