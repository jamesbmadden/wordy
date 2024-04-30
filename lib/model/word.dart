import 'package:wordy/model/wordy_app.dart';
import 'package:wordy/model/language.dart';
import 'package:wordy/model/quiz_question.dart';

class Word {

  Language language;
  List<QuizQuestion> questions;

  String word;
  String translation;
  String? pronunciation;

  bool shouldBeDeleted = false;

  Word(this.word, this.translation, this.language, { this.pronunciation, this.questions = const [] }) {
    // add itself to the given language
    WordyApp.wordyApp.addWord(this);
    language.addWord(this);
  }

  // delete a word: remove it from the language, but not from any quizzes it was associated with, 
  // since it must still be present for historical purposes. If it never appeared in a quiz, 
  // it will be cleared from memory.
  void delete() {
    language.removeWord(this);
    // let the word know if should be deleted if all its questions are deleted
    shouldBeDeleted = true;
    if (questions.isEmpty) {
      WordyApp.wordyApp.removeWord(this);
    }
  }

  void removeQuestion(QuizQuestion question) {
    questions.remove(question);
    if (questions.isEmpty && shouldBeDeleted) {
      WordyApp.wordyApp.removeWord(this);
    }
  }

}