
import 'package:flutter/material.dart';
import 'package:learning_programming_languages/generated/l10n.dart';

class AppLocalization {
  static late S _localization;

  static Future<void> initialize(Locale locale) async {
    _localization = await S.load(locale);
  }

  static S get strings => _localization;



}
