import 'package:flutter/material.dart';

sealed class LanguageEvent {}

class ChangeLanguageEvent extends LanguageEvent {
  Locale newLanguage;

  ChangeLanguageEvent({required this.newLanguage});
}
