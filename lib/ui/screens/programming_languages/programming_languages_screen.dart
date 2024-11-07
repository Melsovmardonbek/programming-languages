import 'package:flutter/material.dart';
import 'package:learning_programming_languages/ui/screens/main/main_screen.dart';
import 'package:learning_programming_languages/utils/app_constants.dart';

class ProgrammingLanguagesScreen extends StatefulWidget {
  const ProgrammingLanguagesScreen({super.key});

  @override
  State<ProgrammingLanguagesScreen> createState() => _ProgrammingLanguagesScreenState();
}

class _ProgrammingLanguagesScreenState extends State<ProgrammingLanguagesScreen> {
  @override
  Widget build(BuildContext context) {
    return MainScreen(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(AppConstants.initialLocale == const Locale("en")
                    ? "English"
                    : "Russian"),
                // for (var language in state.)
                //   ProgrammingLanguageWidget(
                //     title: language.title,
                //     description: language.description,
                //     image: language.image,
                //   ),
              ],
            ),
          ),
        ),
        title: "Dev Manual");
  }
}
