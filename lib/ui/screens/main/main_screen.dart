import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_programming_languages/blocs/language_bloc/language_bloc.dart';
import 'package:learning_programming_languages/blocs/language_bloc/language_state.dart';
import 'package:learning_programming_languages/ui/widgets/app_bar/custom_app_bar.dart';
import 'package:learning_programming_languages/ui/widgets/programming_language_widget.dart';

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  MainScreen({required this.body, required this.title});

  Widget body;
  String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isDropped = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(builder: (context, state) {
      if (state is LanguageLoadingState) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else if (state is LanguageLoadedState) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: CustomAppBar.mainAppBar(context, 'Dev Manual', false, false),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  for (var language in state.languages)
                    ProgrammingLanguageWidget(
                      language: language,
                    ),
                ],
              ),
            ),
          ),
        );
      }
      return const Scaffold(
        body: Center(
          child: Text("Loading datas..."),
        ),
      );
    });
  }
}
