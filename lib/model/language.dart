import 'package:wordy/model/wordy_app.dart';
import 'package:wordy/model/quiz.dart';
import 'package:wordy/model/word.dart';

class Language {

  String name;
  String flag = "";

  List<Word> words = [];
  List<Quiz> quizzes = [];

  Language(this.name) {
    // add itself to the WordyApp
    WordyApp.wordyApp.addLanguage(this);
  }

  /// remove a word from the language
  bool removeWord(Word word) {
    return words.remove(word);
  }

  void addWord(Word word) {
    words.add(word);
  }

  /// destroy the record of a quiz
  bool removeQuiz(Quiz quiz) {
    WordyApp.wordyApp.removeQuiz(quiz);
    quiz.deleteQuestions();
    return quizzes.remove(quiz);
  }

  void addQuiz(Quiz quiz) {
    quizzes.add(quiz);
  }

  // completely delete a language. all its words and quizzes must be deleted.
  void delete() {
    for (Quiz quiz in quizzes) {
      quiz.delete();
    }
    for (Word word in words) {
      word.delete();
    }
    WordyApp.wordyApp.removeLanguage(this);
  }

}