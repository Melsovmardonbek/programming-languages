import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_programming_languages/blocs/language_bloc/language_bloc.dart';
import 'package:learning_programming_languages/blocs/language_bloc/language_event.dart';
import 'package:learning_programming_languages/blocs/language_bloc/language_state.dart';
import 'package:learning_programming_languages/utils/app_constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(builder: (context, state) {
      if (state is LanguageLoadingState) {
        return const Center(
          child: Text("Loading"),
        );
      }
      return Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  context.read<LanguageBloc>().add(ChangeLanguageEvent(
                      newLanguage:
                          AppConstants.initialLocale == const Locale("en")
                              ? const Locale("ru")
                              : const Locale("en")));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                  decoration: BoxDecoration(
                      color: AppConstants.initialLocale == Locale('en')
                          ? const Color(0xff73A0C5)
                          : const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(7)),
                  child: Text("English"),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  context.read<LanguageBloc>().add(ChangeLanguageEvent(
                      newLanguage:
                          AppConstants.initialLocale == const Locale("en")
                              ? const Locale("ru")
                              : const Locale("en")));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                  decoration: BoxDecoration(
                      color: AppConstants.initialLocale == Locale('ru')
                          ? const Color(0xff73A0C5)
                          : const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(7)),
                  child: Text("Russian"),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
