import 'package:learning_programming_languages/data/models/category_model.dart';

class EntryModel {
  String name;
  List<CategoryModel> categories;
  EntryModel({required this.name, required this.categories});
}
