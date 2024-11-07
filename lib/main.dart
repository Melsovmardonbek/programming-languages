import 'package:flutter/material.dart';
import 'package:learning_programming_languages/core/app/app.dart';
import 'package:learning_programming_languages/data/services/localization/app_localization.dart';

import 'package:learning_programming_languages/utils/app_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppLocalization.initialize(AppConstants.initialLocale);
  runApp(const App());
}
