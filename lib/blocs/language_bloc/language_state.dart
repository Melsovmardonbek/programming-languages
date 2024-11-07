import 'package:learning_programming_languages/data/models/languages_entity.dart';

sealed class LanguageState {}

class LanguageInitialState extends LanguageState {}

class LanguageLoadingState extends LanguageState {}

class LanguageLoadedState extends LanguageState {
  List<LanguagesEntity> languages;

  LanguageLoadedState({required this.languages});
}

class LanguageErrorState extends LanguageState {
  String error;
  LanguageErrorState({required this.error});
}
