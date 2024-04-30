import 'package:wordy/model/language.dart';
import 'package:wordy/model/wordy_app.dart';

typedef LanguageInfo = ({
  String name,
});

/// return languageInfo objects for every language in the system
List<LanguageInfo> getLanguages() {

  List<LanguageInfo> languageInfo = [];

  for (Language lang in WordyApp.wordyApp.languages) {
    languageInfo.add((
      name: lang.name
    ));
  }

  return languageInfo;

}