import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_programming_languages/blocs/language_bloc/language_bloc.dart';
import 'package:learning_programming_languages/blocs/language_bloc/language_state.dart';
import 'package:learning_programming_languages/ui/widgets/app_bar/custom_app_bar.dart';

class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(builder: (context, state) {
      if (state is LanguageLoadingState) {
        print("asdkhadbvfjgdvjgadbv");
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else if (state is LanguageLoadedState) {
        print("rebuilded");
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: CustomAppBar.mainAppBar(context, 'Flutter', true, true),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Text(text),
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
