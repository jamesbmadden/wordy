/// manages the data for the app
import 'package:wordy/model/language.dart';
import 'package:wordy/model/word.dart';
import 'package:wordy/model/quiz.dart';
import 'package:wordy/model/quiz_question.dart';

class WordyApp {

  static WordyApp wordyApp = WordyApp();

  // the data
  late List<Language> languages;
  late List<Word> words;
  late List<Quiz> quizzes;
  late List<QuizQuestion> quizQuestions;

  WordyApp() {

    // future: implement persistence here, either with firebase or local storage
    languages = [];
    words = [];
    quizzes = [];
    quizQuestions = [];

  }

  void addWord(Word word) {
    words.add(word);
  }
  bool removeWord(Word word) {
    return words.remove(word);
  }

  void addQuestion(QuizQuestion question) {
    quizQuestions.add(question);
  }
  bool removeQuestion(QuizQuestion question) {
    return quizQuestions.remove(question);
  }

  void addQuiz(Quiz quiz) {
    quizzes.add(quiz);
  }
  bool removeQuiz(Quiz quiz) {
    return quizzes.remove(quiz);
  }

  void addLanguage(Language language) {
    languages.add(language);
  }
  bool removeLanguage(Language language) {
    return languages.remove(language);
  }

}