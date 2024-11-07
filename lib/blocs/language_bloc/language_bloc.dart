import 'package:bloc/bloc.dart';
import 'package:learning_programming_languages/data/database/languages_list.dart';
import 'package:learning_programming_languages/utils/app_constants.dart';
import 'language_event.dart';
import 'language_state.dart';
import 'package:learning_programming_languages/data/services/localization/app_localization.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageInitialState()) {
    on<ChangeLanguageEvent>(_onChangeLanguage);
  }

  void _onChangeLanguage(ChangeLanguageEvent event, emit) async {
    print("changing language");
    emit(LanguageLoadingState());
    try {
      await AppLocalization.initialize(event.newLanguage).then((_) {
        AppConstants.setInitialLocale(event.newLanguage);
      });
      final languagesList = getLanguagesList();
      emit(LanguageLoadedState(languages: languagesList));
    } catch (e) {
      emit(LanguageErrorState(error: e.toString()));
    }
  }
}
