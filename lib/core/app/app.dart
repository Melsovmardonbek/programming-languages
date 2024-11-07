import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:learning_programming_languages/blocs/language_bloc/language_bloc.dart';
import 'package:learning_programming_languages/blocs/language_bloc/language_event.dart';
import 'package:learning_programming_languages/generated/l10n.dart';
import 'package:learning_programming_languages/ui/screens/main/main_screen.dart';
import 'package:learning_programming_languages/ui/screens/programming_languages/programming_languages_screen.dart';
import 'package:learning_programming_languages/utils/app_constants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageBloc()
        ..add(ChangeLanguageEvent(newLanguage: AppConstants.initialLocale)),
      child: MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: Locale("ru"),
        home: ProgrammingLanguagesScreen(),
      ),
    );
  }
}
