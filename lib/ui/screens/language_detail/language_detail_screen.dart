import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_programming_languages/blocs/language_bloc/language_bloc.dart';
import 'package:learning_programming_languages/blocs/language_bloc/language_state.dart';
import 'package:learning_programming_languages/data/models/flutter_entity.dart';
import 'package:learning_programming_languages/data/models/languages_entity.dart';
import 'package:learning_programming_languages/ui/widgets/app_bar/custom_app_bar.dart';
import 'package:learning_programming_languages/ui/widgets/tile/custom_expansion_tile.dart';

class LanguageDetailScreen extends StatelessWidget {
  const LanguageDetailScreen({super.key, required this.language});

  final LanguagesEntity language;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(builder: (context, state) {
      if (state is LanguageLoadingState) {
        return const Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else if (state is LanguageLoadedState) {
        if (language is FlutterEntity) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: CustomAppBar.mainAppBar(context, 'Flutter', true, true),
            body: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    for (var entry in (language as FlutterEntity).entries)
                      Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: ExpansionTile(
                          title: Text(
                            entry.name,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          collapsedTextColor: Colors.black,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          collapsedShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          showTrailingIcon: false,
                          backgroundColor: const Color(0xff73A0C5),
                          collapsedBackgroundColor: const Color(0xffF2F2F2),
                          children: [
                            for (var category in entry.categories)
                              CustomExpansionTile(
                                  title: Text(
                                    category.name,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  text: category.description,
                                  children: [
                                    for (var item in category.items)
                                      Container(
                                          padding: EdgeInsets.all(5),
                                          color: Colors.white,
                                          width: double.infinity,
                                          child: Center(
                                              child: Text(
                                            item,
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16,
                                            ),
                                          )))
                                  ])
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return Scaffold(
            body: Center(
              child: Text(
                "Coming soon...",
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
          );
        }
      }

      return const Scaffold(
        body: Center(
          child: Text("Loading datas..."),
        ),
      );
    });
  }
}
